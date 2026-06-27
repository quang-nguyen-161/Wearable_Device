#include "max_driver.h"
#include "timer_driver.h"
#include "nrf_delay.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#define SCL_PIN 2
#define SDA_PIN 3


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
	uint8_t reg = 0x0D;
	uint8_t whoami = 0;

	timer_compare_init(NRF_TIMER1,TIMER1_IRQn,1000000);
	
	while (1)
	{
		twim_txrx(NRF_TWIM0,
           0x1C,
           &reg,
           1,
           &whoami,
           1);

NRF_LOG_INFO("WHO_AM_I = 0x%02X", whoami);
		NRF_LOG_PROCESS();
		nrf_delay_ms(1000);
	}
		
}

void TIMER1_IRQHandler(void)
{
    if (NRF_TIMER1->EVENTS_COMPARE[0])
    {
        NRF_TIMER1->EVENTS_COMPARE[0] = 0;

        NRF_LOG_INFO("Timer fired");
    }
}
