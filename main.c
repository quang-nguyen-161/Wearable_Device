#include "main.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_delay.h"
#include "nrf_pwr_mgmt.h"
int32_t ecg_sample;

uint32_t red_sample;
uint32_t ir_sample;

rb_typedef_t rb_ir;
rb_typedef_t rb_red;
rb_typedef_t rb_ecg;
typedef enum
{
    PERIODIC_CAPTURE,
    PERIODIC_IDLE
} periodic_state_t;

void log_init(void)
{
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);
    NRF_LOG_DEFAULT_BACKENDS_INIT();
}

void power_management_init(void)
{
    ret_code_t err = nrf_pwr_mgmt_init();
    APP_ERROR_CHECK(err);
}

void idle_state_handle(void)
{
    if (!NRF_LOG_PROCESS()) { nrf_pwr_mgmt_run(); }
}

void sensor_callback()
{
    sensor_ticks = true;
}

void adc_callback(int16_t sample)
{
    ecg_sample = sample;
    ecg_ticks = true;
}

void peripheral_init(config_t *dev_config)
{		
		//twi0 use for max30102 & tmp117
    twim_init(NRF_TWIM0, TWI_SCL_PIN, TWI_SDA_PIN);
		
	  //spi1 use for gc9a01 lcd
    spim_init(NRF_SPIM1, SPI_SCL_PIN, SPI_SDA_PIN);

		//saadc use for ad8232, timer2 use for capture
    saadc_init(adc_callback);
    ppi_init(NRF_TIMER2, dev_config->ecg_sample);
		
		//timer3 use for max30102 capture & based ticks
    timer_compare_init(NRF_TIMER3, sensor_callback, dev_config->ppg_sample);
		
		//timer4 use for time measurement 
		timer_init_us(NRF_TIMER4);
		timer_start(NRF_TIMER4);
	
    wdt_init(dev_config->wdt_timeout);
}

static void send_vitals_values(sensor_data_t sensors)
{
  if (40 < sensors.hr_ppg && sensors.hr_ppg < 150)
    sensors.hr_ppg_valid = true;
	else
    sensors.hr_ppg_valid = false;
  
	if ( 80 < sensors.spo2 && sensors.spo2 <= 100) sensors.spo2_valid = true;
	else sensors.spo2_valid = false;
	
	if (30.0 < sensors.temp && sensors.temp <= 40) sensors.temp_valid = true;
	else sensors.temp_valid = false;
	sensors.hr_ecg = sensors.hr_ecg_valid ? sensors.hr_ecg: 0;
	sensors.hr_ppg = sensors.hr_ppg_valid ? sensors.hr_ppg: 0;
	sensors.spo2 = sensors.spo2_valid ? sensors.spo2: 0;
	sensors.temp = sensors.temp_valid ? sensors.temp: 0;
	uint16_t temp_x10 = (uint16_t)(sensors.temp * 10.0f + 0.5f);
    uint8_t pkt[5] = {
        sensors.hr_ecg,
        sensors.hr_ppg,
        sensors.spo2,
        (uint8_t)(temp_x10 & 0xFF),
        (uint8_t)(temp_x10 >> 8),
    };
    if (ble_app_send(pkt, sizeof(pkt)) == NRF_SUCCESS)
		{
    NRF_LOG_INFO("packet sent");
		}
}
int main(void)
{
    log_init();
    flash_init();
		
		flash_default_config(&dev_config);
		
		ble_stack_init();   
    gap_params_init();
    gatt_init();
    services_init();
    advertising_init();
    conn_params_init();
	
    peripheral_init(&dev_config);
		NRF_LOG_INFO("peripheral init\n");
		NRF_LOG_FLUSH();
    uint32_t capture_threshold =
        (dev_config.capture_time  * 1000UL) / dev_config.ppg_sample;
		
    uint32_t periodic_threshold =
        (dev_config.periodic_time * 1000UL) / dev_config.ppg_sample;
		
		uint32_t ble_send_threshold = 
				(dev_config.ble_send_time * 1000UL) / dev_config.ppg_sample;
		uint32_t lcd_refresh_threshold = 
				(dev_config.lcd_refresh * 1000UL) / dev_config.ppg_sample;
		//tmp capture every 200ms
		uint32_t tmp_capture_threshold = (200 * 1000UL) / dev_config.ppg_sample;
		static uint32_t 			 tmp_capture_counter = 0;
		static uint32_t 			 lcd_refresh_counter = 0;
	  static uint32_t 			 ble_send_counter = 0;
    static uint32_t        phase_counter  = 0;
    static periodic_state_t periodic_state = PERIODIC_CAPTURE;
		
		//sensors init
		max30102_init();
		tmp117_init();
		gc9a01_init();
		
		advertising_start();
		
    while (1)
    {
        wdt_feed();				
				//continuous mode
        if (dev_config.mode == MODE_CONTINUOUS)
        {
            if (ecg_ticks)
            {
                ecg_ticks = false;		
								float ecg_filtered = ecg_filter_process(ecg_sample);
								rb_push(&rb_ecg, ecg_filtered);
								ecg_process(&rb_ecg, &sensors.hr_ecg);
							//NRF_LOG_INFO("ecg: %d\n",ecg_sample);
											

            }
						//10ms sensors ticks
            if (sensor_ticks)
            {
                sensor_ticks = false;
							
								//counter increment
								ble_send_counter++;
								tmp_capture_counter++;
								lcd_refresh_counter++;
							
								//NRF_LOG_INFO("sensors ticks\n");
								max30102_get_sample(&ir_sample,&red_sample);
								float ir_filtered = ppg_filter_process(ir_sample);
								rb_push(&rb_ir, ir_filtered);
							
								float red_filtered = ppg_filter_process(red_sample);
								rb_push(&rb_red, red_filtered);
							
								ppg_process(&rb_ir,&rb_red,&sensors.hr_ppg,&sensors.spo2);
								
								//get temp
								if (tmp_capture_counter > tmp_capture_threshold)
								{
									tmp_capture_counter = 0;
									
									//tmp117 capture once then sleep
									tmp117_wake_oneshot();
									sensors.temp = tmp117_get_temp();
									tmp117_shutdown_mode();
								}
            }
						// if ble send counter is full then send ble packers
						if (ble_send_counter >= ble_send_threshold)
						{
								ble_send_counter = 0;
								
								if (ble_app_ready_to_send())
                    {
                        send_vitals_values(sensors);
                    }
									
						}
						//lcd refresh
						if (lcd_refresh_counter >= lcd_refresh_threshold)
						{
							lcd_refresh_counter = 0;
							
							//dashboard update here
							
						}
        }
				
				//periodic mode
        if (dev_config.mode == MODE_PERIODIC)
        {	
						
			
            if (sensor_ticks)
							{
								sensor_ticks = false;
								
								//counter increment								
								phase_counter++;
								
								//entering capture phase
								if (periodic_state == PERIODIC_CAPTURE)
										{
											//wakup max30102 after sleep phase
											if (max_shutdown)
												{
													max30102_wakeup();
													max_shutdown = false;
												}
											//tmp117 capture increment
											tmp_capture_counter++;
											//max30102 pipeline
											max30102_get_sample(&ir_sample, &red_sample);
											float ir_filtered = ppg_filter_process(ir_sample);
											rb_push(&rb_ir, ir_filtered);

											float red_filtered = ppg_filter_process(red_sample);
											rb_push(&rb_red, red_filtered);

											ppg_process(&rb_ir, &rb_red, &sensors.hr_ppg, &sensors.spo2);
							
											//tmp117 get temp
											if (tmp_capture_counter > tmp_capture_threshold)
											{
												tmp_capture_counter = 0;
												tmp117_wake_oneshot();
												sensors.temp = tmp117_get_temp();
												tmp117_shutdown_mode();
											}
							
											//end of capture phase
											if (phase_counter >= capture_threshold)
											{
												phase_counter = 0;
												periodic_state = PERIODIC_IDLE;
												//send data before sleep
												if (ble_app_ready_to_send())
												{
													send_vitals_values(sensors);
												}
											//disable sensors
											ppi_disable();
											saadc_disable();
											max30102_shutdown();
											max_shutdown = true;
											}			
										}
    else
										{
											//end of sleep phase
											if (phase_counter >= periodic_threshold)
											{
													phase_counter = 0;
													periodic_state = PERIODIC_CAPTURE;
													ppi_enable();
													saadc_enable();
											}
										}
							}
						//ecg only sample in capture phase
            if (periodic_state == PERIODIC_CAPTURE && ecg_ticks)
            {
                ecg_ticks = false;		
								float ecg_filtered = ecg_filter_process(ecg_sample);
								rb_push(&rb_ecg, ecg_filtered);
								ecg_process(&rb_ecg, &sensors.hr_ecg);
							//NRF_LOG_INFO("ecg: %d\n",ecg_sample);
            }
        }
		if (!ecg_ticks && !sensor_ticks)
        {
						
            idle_state_handle();
        }
    }
		
		//mode change via BLE
		if (config_update_flag)
		{
		//parse ble packet
    flash_save_config(&dev_config);
    config_update_flag = false;   
}
}
