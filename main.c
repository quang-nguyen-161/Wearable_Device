#include "max_driver.h"
#include "timer_driver.h"
#include "adc_driver.h"
#include "helper.h"
#include "nrf_delay.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#define SCL_PIN 2
#define SDA_PIN 3

int16_t adc_buffer;

volatile bool saadc_done  = false;
volatile bool sensor_done = false;


//saadc interrupt handler
void SAADC_IRQHandler(void)
{
    if (NRF_SAADC->EVENTS_END)
    {
        NRF_SAADC->EVENTS_END = 0;
        saadc_done = true;
        
    }
}

void log_init(void)
{
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    NRF_LOG_DEFAULT_BACKENDS_INIT();
}

int main()
{
		log_init();
		twim_init(NRF_TWIM0,SCL_PIN,SDA_PIN);
		
		saadc_init(NRF_SAADC, SAADC_IRQn, 0);
    saadc_buffer_init(NRF_SAADC, &adc_buffer, 1);
		
		ppi_init(NRF_TIMER2, NRF_SAADC);
	
		saadc_start(NRF_SAADC, NRF_TIMER2);
		
		//timer 2 dedicated for saadc, 4ms ticks
		timer_ppi_init(NRF_TIMER2, 4000);
	
		//timer 3 dedicated for sensor ticks, 10ms ticks
		timer_compare_init(NRF_TIMER3, TIMER3_IRQn, 10000);
		
		rb_typedef_t ecg_rb;
		rb_init(&ecg_rb);
	
	
	while (1)
	{
		if (saadc_done)
		{
			 rb_push(&ecg_rb, adc_buffer);
		}
		NRF_LOG_PROCESS();

	}
		
}
