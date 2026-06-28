#include "max_driver.h"
#include "timer_driver.h"
#include "adc_driver.h"
#include "helper.h"
#include "nrf_delay.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_gpio.h"
#define SCL_PIN 13
#define SDA_PIN 12

int16_t adc_buffer;  

volatile bool saadc_done = false;
volatile bool sensor_done = false;


//adc interrupt handler

void log_init(void)
{
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    NRF_LOG_DEFAULT_BACKENDS_INIT();
}

bool log_ticks = false;
void TIMER3_IRQHandler()
{
		if (NRF_TIMER3->EVENTS_COMPARE[0])
    {
        NRF_TIMER3->EVENTS_COMPARE[0] = 0;
			  log_ticks = true;
		}
}
		
int main()
{
		log_init();
	
		saadc_init();
		ppi_init(NRF_TIMER2, 4000);
	
		//timer 3 dedicated for sensor ticks, 10ms ticks
		timer_compare_init(NRF_TIMER3, TIMER3_IRQn, 10000);
		
		rb_typedef_t ecg_rb;
		rb_init(&ecg_rb);
		nrf_gpio_cfg_output(3);
		nrf_gpio_pin_set(3);

    int16_t sample;
    while (true)
    {
        if (adc_get_sample(&sample))
        {
            NRF_LOG_INFO("ECG: %d", sample);
        }
				
					NRF_LOG_PROCESS();
					
				
    }
}



