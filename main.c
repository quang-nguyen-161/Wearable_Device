#include "main.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_delay.h"

int32_t ecg_sample;

uint32_t red_sample;
uint32_t ir_sample;
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

void sensor_callback()
{
    sensor_ticks = true;
}

void adc_callback(int16_t sample)
{
    ecg_sample = sample;
    ecg_ticks = true;
}
void flash_default_config(config_t *dev_config)
{
    uint32_t dummy;

    flash_read(MODE_STATE_ADDR, &dummy, WORD_SIZE);
    if (dummy == FLASH_ERASED_WORD)
    {
        flash_write(MODE_STATE_ADDR, &(uint32_t){DEFAULT_MODE}, WORD_SIZE);
        dev_config->mode = (uint32_t)DEFAULT_MODE;
    }
    else dev_config->mode = (uint32_t)dummy;

    flash_read(PPG_SAMPLE_RATE_ADDR, &dummy, WORD_SIZE);
    if (dummy == FLASH_ERASED_WORD)
    {
        flash_write(PPG_SAMPLE_RATE_ADDR, &(uint32_t){DEFAULT_PPG_RATE_US}, WORD_SIZE);
        dev_config->ppg_sample = DEFAULT_PPG_RATE_US;
    }
    else dev_config->ppg_sample = dummy;

    flash_read(ECG_SAMPLE_RATE_ADDR, &dummy, WORD_SIZE);
    if (dummy == FLASH_ERASED_WORD)
    {
        flash_write(ECG_SAMPLE_RATE_ADDR, &(uint32_t){DEFAULT_ECG_RATE_US}, WORD_SIZE);
        dev_config->ecg_sample = DEFAULT_ECG_RATE_US;
    }
    else dev_config->ecg_sample = dummy;

    flash_read(CAPTURE_TICKS_ADDR, &dummy, WORD_SIZE);
    if (dummy == FLASH_ERASED_WORD)
    {
        flash_write(CAPTURE_TICKS_ADDR, &(uint32_t){DEFAULT_CAPTURE_TICKS}, WORD_SIZE);
        dev_config->capture_time = DEFAULT_CAPTURE_TICKS;
    }
    else dev_config->capture_time = dummy;

    flash_read(PERIODIC_TICKS_ADDR, &dummy, WORD_SIZE);
    if (dummy == FLASH_ERASED_WORD)
    {
        flash_write(PERIODIC_TICKS_ADDR, &(uint32_t){DEFAULT_PERIODIC_TICKS}, WORD_SIZE);
        dev_config->periodic_time = DEFAULT_PERIODIC_TICKS;
    }
    else dev_config->periodic_time = dummy;

    flash_read(WDT_TIMEOUT_ADDR, &dummy, WORD_SIZE);
    if (dummy == FLASH_ERASED_WORD)
    {
        flash_write(WDT_TIMEOUT_ADDR, &(uint32_t){DEFAULT_WDT_TIMEOUT}, WORD_SIZE);
        dev_config->wdt_timeout = DEFAULT_WDT_TIMEOUT;
    }
    else dev_config->wdt_timeout = dummy;
}

void peripheral_init(config_t *dev_config)
{
    twim_init(NRF_TWIM0, TWI_SCL_PIN, TWI_SDA_PIN);

    spim_init(NRF_SPIM1, SPI_SCL_PIN, SPI_SDA_PIN);

    saadc_init(adc_callback);
    ppi_init(NRF_TIMER2, dev_config->ecg_sample);

    timer_compare_init(NRF_TIMER3, sensor_callback, dev_config->ppg_sample);

    wdt_init(dev_config->wdt_timeout);
}

static void send_vitals_values(sensor_data_t sensors)
{
   
    
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
    ble_app_send(pkt, sizeof(pkt));
}
int main(void)
{
    log_init();
    flash_init();
	
		ble_init();
    flash_default_config(&dev_config);
    peripheral_init(&dev_config);

    const uint32_t capture_threshold =
        (dev_config.capture_time  * 1000UL) / dev_config.ppg_sample;

    const uint32_t periodic_threshold =
        (dev_config.periodic_time * 1000UL) / dev_config.ppg_sample;

    static uint32_t        phase_counter  = 0;
    static periodic_state_t periodic_state = PERIODIC_CAPTURE;
		
		//sensors init
		max30102_init();
		tmp117_init();
		gc9a01_init();
		
    while (1)
    {
        wdt_feed();
				nrf_delay_ms(100);
        if (dev_config.mode == MODE_CONTINUOUS)
        {
            if (ecg_ticks)
            {
                ecg_ticks = false;
								ecg_process(&ecg_sample, &sensors);
            }
            if (sensor_ticks)
            {
                sensor_ticks = false;
								max30102_get_sample(&ir_sample,&red_sample);
								ppg_process(&ir_sample,&red_sample,&sensors);
            }
        }

        if (dev_config.mode == MODE_PERIODIC)
        {
            if (sensor_ticks)
            {
                sensor_ticks = false;
                phase_counter++;

                if (periodic_state == PERIODIC_CAPTURE)
                {
                    if (phase_counter >= capture_threshold)
                    {
                        phase_counter  = 0;
                        periodic_state = PERIODIC_IDLE;
                        ppi_disable();
                        saadc_disable();
                    }
                }
                else
                {
                    if (phase_counter >= periodic_threshold)
                    {
                        phase_counter  = 0;
                        periodic_state = PERIODIC_CAPTURE;
                        ppi_enable();
                        saadc_enable();
                    }
                }
            }

            if (periodic_state == PERIODIC_CAPTURE && ecg_ticks)
            {
                ecg_ticks = false;
            }
        }
    }
}