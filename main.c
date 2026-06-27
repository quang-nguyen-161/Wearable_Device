#include "max_driver.h"
#include "timer_driver.h"
#include "adc_driver.h"
#include "helper.h"
#include "nrf_delay.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_gpio.h"
#define SCL_PIN 2
#define SDA_PIN 12

int16_t adc_buffer;  

volatile bool saadc_done = false;
volatile bool sensor_done = false;


//adc interrupt handler
void SAADC_IRQHandler(void)
{
    if (NRF_SAADC->EVENTS_STARTED)
    {
        NRF_SAADC->EVENTS_STARTED = 0;
				
				//repointing buffer
        NRF_SAADC->RESULT.PTR    = (uint32_t)&adc_buffer;
        NRF_SAADC->RESULT.MAXCNT = 1;
    }
		
    if (NRF_SAADC->EVENTS_END)
    {
        NRF_SAADC->EVENTS_END = 0;
        saadc_done = true;
        NRF_SAADC->TASKS_START = 1;
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
   
		ppi_init(NRF_TIMER2, NRF_SAADC);
		
		//timer 2 dedicated for saadc, 4ms ticks
		timer_ppi_init(NRF_TIMER2, 4000);
		saadc_start(NRF_SAADC, NRF_TIMER2, &adc_buffer);
	
		
	
		//timer 3 dedicated for sensor ticks, 10ms ticks
		timer_compare_init(NRF_TIMER3, TIMER3_IRQn, 10000);
		
		rb_typedef_t ecg_rb;
		rb_init(&ecg_rb);
		nrf_gpio_cfg_output(3);
		nrf_gpio_pin_set(3);
	
	while (1)
{
    if (saadc_done)
    {
        saadc_done = false;
        rb_push(&ecg_rb, adc_buffer);  // always push, never block
    }

    // log independently, only when buffer has data
    static uint8_t last_logged = 0;
    if (ecg_rb.head != last_logged)
    {
        uint8_t idx = last_logged % RB_MAX_SIZE;
        NRF_LOG_INFO("count: %d val: %d", idx, ecg_rb.buffer[idx]);
        last_logged++;
        NRF_LOG_PROCESS();  // drain one log entry per loop
    }
}
}


