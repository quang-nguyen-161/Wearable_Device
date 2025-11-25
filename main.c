//////////////////////////////////////////
//////////  INCLUDE LIBRARY  /////////////
//////////////////////////////////////////
#include <stdio.h>
#include "boards.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf_drv_twi.h"
#include "nrf_delay.h"
#include "flash_user.h"

#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"

#include "tmp117.h"
#include "max30102.h"


//////////////////////////////////////////
////////// PERIPHERAL DEFINE /////////////
//////////////////////////////////////////
#define TWI_SCL_PIN 28
#define TWI_SDA_PIN 29
#define TMP_INT_PIN 23
#define MAX_INT_PIN 24
#define MMA_INT_PIN 25

#define MODE_CONTINUOUS 1
#define MODE_TIMER 			2
#define MODE_LOW_POWER  3
#define MODE_ECG        4


#define TWI_INSTANCE_ID     0

extern bool volatile m_fds_initialized;
volatile bool m_xfer_done = false;  
static const nrf_drv_twi_t m_twi = NRF_DRV_TWI_INSTANCE(TWI_INSTANCE_ID);



//////////////////////////////////////////
////////// PARAMETERS DEFINE /////////////
//////////////////////////////////////////

volatile uint32_t flash_ring_buff[1000] = {0};
uint32_t aun_ir_buffer[100]; //infrared LED sensor data
uint32_t aun_red_buffer[100];  //red LED sensor data

float n_spo2,ratio,correl;  //SPO2 value
int8_t ch_spo2_valid;  //indicator to show if the SPO2 calculation is valid
int32_t n_heart_rate; //heart rate value
int8_t  ch_hr_valid;  //indicator to show if the heart rate calculation is valid
int32_t i;
char hr_str[10];

float n_spo2_maxim;  //SPO2 value
int8_t ch_spo2_valid_maxim;  //indicator to show if the SPO2 calculation is valid
int32_t n_heart_rate_maxim; //heart rate value
int8_t  ch_hr_valid_maxim;  //indicator to show if the heart rate calculation is valid

float hr_chi;
float spo2_chi;
float temp = 0; 

int new_score = 0, old_score = 9;
int measure_flag = 0;
int check = 0;

uint32_t time_sent[256], time_ack[256], latency[256];

int ch = 0;
uint32_t timestamp = 0;

//////////////////////////////////////////
////////  INTERVAL TIME DEFINE  //////////
//////////////////////////////////////////
#define NORMAL_INTERVAL_TIME 				120000
#define WARNING_INTERVAL_TIME 			60000
#define DANGEROUS_INTERVAL_TIME 		30000

#define CONTINUOUS_SAMPLE_TIME 			80

#define DEFAULT_INTERVAL_TIMER_MODE 100


//////////////////////////////////////////
//////////  GLOBAL FUNCTION  /////////////
//////////////////////////////////////////
void twi_scan(void);
void twi_init();
void tim_init(uint32_t timer_interval);
void test_addr(uint8_t addr);
void health_measure();
void log_init(void);
void timer_init(void);
void power_manage(void);
//////////////////////////////////////////
//////////  HANDLER FUNCTION /////////////
//////////////////////////////////////////
void twi_handler(nrf_drv_twi_evt_t const * p_event, void * p_context);





//////////////////////////////////////////
//////////    MAIN PROGRAM   /////////////
//////////////////////////////////////////
int main(void)
{
    APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
    NRF_LOG_DEFAULT_BACKENDS_INIT();
		nrf_gpio_cfg_output(3);
		nrf_gpio_pin_set(3);
    NRF_LOG_INFO("\r\nTWI sensor example started.");
    NRF_LOG_FLUSH();

	
    twi_init();
		twi_scan();
	
	//tim_init(DEFAULT_INTERVAL_TIMER_MODE);
		//max30102_init();
	tmp117_Init();
	tmp117_continuous_mode();
	//tmp117_shutdown_mode();
    while (true)
    {
			//	max30102_read_fifo(aun_ir_buffer, aun_red_buffer, 99); 
			//	NRF_LOG_INFO("IR, %d, RED, %d, timestamp , %d",aun_ir_buffer[99],aun_red_buffer[99],timestamp);
			//	NRF_LOG_FLUSH();
			timestamp+=20;
			float tmp = tmp117_get_temp();
		NRF_LOG_INFO("temp, " NRF_LOG_FLOAT_MARKER ", timestamp, %d",
             NRF_LOG_FLOAT(tmp),
             timestamp);
			NRF_LOG_FLUSH();
			nrf_delay_ms(20);
			//test_addr(0x48);
		//	test_addr(0x57);
		//	twi_scan();
		
		}
    }

void test_addr(uint8_t addr)
{
    ret_code_t err;
    uint8_t dummy = 0x00;
    uint32_t timeout = 100000;

    m_xfer_done = false;

    // Try writing one dummy byte to test for ACK
    err = nrf_drv_twi_tx(&m_twi, addr, &dummy, 1, false);

    // Wait for completion or timeout
    while ((!m_xfer_done) && (--timeout));

    if (timeout == 0)
    {
        NRF_LOG_WARNING("Timeout waiting for response from 0x%02X", addr);
    }
    else if (err == NRF_SUCCESS)
    {
        NRF_LOG_INFO("? Device ACK at 0x%02X", addr);
    }
    else
    {
        NRF_LOG_INFO("? No ACK at 0x%02X (err=%d)", addr, err);
    }

    NRF_LOG_FLUSH();
    nrf_delay_ms(10);
}
void twi_handler(nrf_drv_twi_evt_t const * p_event, void * p_context)
{
	switch (p_event->type)
    {
        case NRF_DRV_TWI_EVT_DONE:
            m_xfer_done = true;
            break;

        default:
            break;
    }
}




void twi_init (void)
{
    ret_code_t err_code;

    const nrf_drv_twi_config_t twi_tmp117_config = {
       .scl                = TWI_SCL_PIN,
       .sda                = TWI_SDA_PIN,
       .frequency          = NRF_DRV_TWI_FREQ_100K,
       .interrupt_priority = APP_IRQ_PRIORITY_HIGH,
       .clear_bus_init     = false
    };
	
    err_code = nrf_drv_twi_init(&m_twi, &twi_tmp117_config, twi_handler, NULL);
    APP_ERROR_CHECK(err_code);

    nrf_drv_twi_enable(&m_twi);
		NRF_LOG_INFO("twi_init");
		NRF_LOG_FLUSH();
}
void twi_scan(void)
{
    NRF_LOG_INFO("Scanning I2C bus...");
    NRF_LOG_FLUSH();

    for (uint8_t addr = 1; addr < 127; addr++)
    {
        uint8_t dummy = 0;
        ret_code_t err_code;

        m_xfer_done = false;
        err_code = nrf_drv_twi_tx(&m_twi, addr, &dummy, 1, false);

        // Wait for transfer complete OR timeout
        uint32_t timeout = 100000;
        while ((!m_xfer_done) && --timeout)
        {
            __NOP();
        }

        if (m_xfer_done)
        {
            NRF_LOG_INFO("Found device at 0x%02X", addr);
            NRF_LOG_FLUSH();
        }

        nrf_delay_ms(5);
    }

    NRF_LOG_INFO("Scan complete.");
    NRF_LOG_FLUSH();
}



void health_measure()
{
	max30102_turnon();
	tmp117_continuous_mode();
	max30102_get_hr_spo2();
	tmp117_get_temp();
	max30102_turnoff();
	tmp117_shutdown_mode();
}
void timer_init(void)
{
    ret_code_t err_code = app_timer_init();
    APP_ERROR_CHECK(err_code);
}

void log_init(void)
{
    ret_code_t rc = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(rc);
		NRF_LOG_DEFAULT_BACKENDS_INIT();
}
void power_manage(void)
{
#ifdef SOFTDEVICE_PRESENT
    (void) sd_app_evt_wait();
#else
    __WFE();
#endif
}
static void log_timer_handler(void *p_context)
{
    UNUSED_PARAMETER(p_context);
    
   
}
APP_TIMER_DEF(m_log_timer_id);

void log_timer_init()
{
	ret_code_t err_code = app_timer_create(&m_log_timer_id,
                                       APP_TIMER_MODE_REPEATED,
                                       log_timer_handler);
APP_ERROR_CHECK(err_code);

// Start the timer: e.g. log every 1000 ms
err_code = app_timer_start(m_log_timer_id, APP_TIMER_TICKS(1000), NULL);
APP_ERROR_CHECK(err_code);
}