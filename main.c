//////////////////////////////////////////
///////////// INCLUDE LIBRARIES //////////
//////////////////////////////////////////

#include <stdio.h>
#include "boards.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf_drv_twi.h"
#include "nrf_delay.h"
#include "flash_user.h"
#include "app_pwm.h"

#include <math.h>
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"

#include "filter.h"
#include "tmp117.h"
#include "max30102.h"
#include "GC9A01.h"


//////////////////////////////////////////
/////////////// DEFINES //////////////////
//////////////////////////////////////////

// TWI/I2C Pins
#define TWI_SCL_PIN 25
#define TWI_SDA_PIN 26

// Operation Modes
#define MODE_CONTINUOUS  1
#define MODE_TIMER       2
#define MODE_LOW_POWER   3
#define MODE_ECG         4

// Flash keys
#define RC_FILE        0x1234
#define RC_DATA_KEY    0x1111

// Infrared data buffer
#define IR_BUFFER_SIZE   1000

// PWM instance
APP_PWM_INSTANCE(PWM1, 1);   // PWM using TIMER1

// Interval & timing constants
#define NORMAL_INTERVAL_TIME         120000
#define WARNING_INTERVAL_TIME         60000
#define DANGEROUS_INTERVAL_TIME       30000

#define CONTINUOUS_SAMPLE_TIME            80
#define DEFAULT_INTERVAL_TIMER_MODE      100

// TWI instance ID
#define TWI_INSTANCE_ID     1

// SPI instance ID
#define SPI_INSTANCE  0
//////////////////////////////////////////
/////////////// GLOBAL VARS //////////////
//////////////////////////////////////////

static uint32_t ir_storage[IR_BUFFER_SIZE];
static uint16_t ir_index = 0;

extern bool volatile m_fds_initialized;
volatile bool m_xfer_done = false;

// TWI instance
static const nrf_drv_twi_t m_twi = NRF_DRV_TWI_INSTANCE(TWI_INSTANCE_ID);

// SPI externs

extern const nrf_drv_spi_t spi;
extern volatile bool spi_xfer_done;

// PWM helper flag
static volatile bool ready_flag;



//////////////////////////////////////////
////////////// FORWARD DECLARE ///////////
//////////////////////////////////////////

void twi_scan(void);
void twi_init();
void tim_init(uint32_t timer_interval);
void test_addr(uint8_t addr);
void health_measure();
void log_init(void);
void timer_init(void);
void backlight_pwm_init(void);
void backlight_set(uint8_t percent);

// TWI handler & PWM callback
void twi_handler(nrf_drv_twi_evt_t const * p_event, void * p_context);
void pwm_ready_callback(uint32_t pwm_id);


//////////////////////////////////////////
////////////// MAIN PROGRAM //////////////
//////////////////////////////////////////

int main(void)
{
    // Logging system
    APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
    NRF_LOG_DEFAULT_BACKENDS_INIT();
  
    NRF_LOG_INFO("\r\nTWI sensor example started.");
    NRF_LOG_FLUSH();

    // Init peripherals
    twi_init();
    spi_config();
    twi_scan();

    // LCD init
    GC9A01_Init();
    GC9A01_Clear();
    backlight_pwm_init();
    backlight_set(100);  
    params_display(0, 0, 0);

    // Sensor init
    max30102_init();
    tmp117_Init();

    uint32_t probe = 0, last_probe;
    uint32_t hr = 0, spo2 = 0;
    float temp = 0;

    // Display parameters
    probe_typedef IR_probe_cfg = {
        .max_val = 65000,
        .min_val = 56000,
        .y_top = 110,
        .y_bottom = 230,
    };

    // Ring buffers & peak detection
    uint32_t ir_demo[100];
    uint32_t red_demo[100];
    uint32_t delta_buff[30];
    uint32_t dt_head = 0;
    uint32_t ir_head = 0;
    uint32_t red_head = 0;

    // Timer for display refresh
    const nrf_drv_timer_t TIMER2 = NRF_DRV_TIMER_INSTANCE(2);
    nrf_drv_timer_config_t config = NRF_DRV_TIMER_DEFAULT_CONFIG;

    uint32_t ir = 0, last_ir_sample, filter_ir_sample = 0, last_filter_ir_sample;
    uint32_t red = 0, last_red_sample, filter_red_sample = 0, last_filter_red_sample;

    timer2_init();
    int display_interval = 0;
    int step = 0;
		
		//init interval = 5000ms
		int init_interval = 0;
		
		
		while (init_interval < 2000)
		{
			last_ir_sample = ir;
      last_filter_ir_sample = filter_ir_sample;
      last_red_sample = red;
			last_filter_red_sample = filter_red_sample;
			
			max30102_read_fifo(&ir, &red);

      // Apply 5Hz low-pass filter
      filter_ir_sample = bu_filter_1st_5Hz(ir, last_ir_sample, last_filter_ir_sample);
      filter_red_sample = bu_filter_1st_5Hz(red, last_red_sample, last_filter_red_sample);
			// Push IR/Red samples into ring buffer
      ring_buffer_push(ir_demo, filter_ir_sample, 100, &ir_head);
			ring_buffer_push(red_demo, filter_red_sample, 100, &red_head);

      // Detect peak-to-peak timing
      peak_time_push(ir_demo, delta_buff, 100, ir_head, &dt_head, 30);
			init_interval = timer2_now() / 1000 - init_interval;
		}
		
    while (true)
    {
        int last_display = timer2_now() / 1000;

        while (display_interval < 5000)
        {
            // Cache previous filtered samples
            last_ir_sample = ir;
            last_filter_ir_sample = filter_ir_sample;
            last_red_sample = red;
            last_filter_red_sample = filter_red_sample;

            // Read MAX30102 sample
            max30102_read_fifo(&ir, &red);

            // Apply 5Hz low-pass filter
            filter_ir_sample = bu_filter_1st_5Hz(ir, last_ir_sample, last_filter_ir_sample);
            filter_red_sample = bu_filter_1st_5Hz(red, last_red_sample, last_filter_red_sample);

            // Draw waveform
            params_probe(filter_ir_sample, last_filter_ir_sample, step, Probe_color, &IR_probe_cfg);
            step++;
            if (step == 220) step = 0;

            // If finger removed
            if (filter_ir_sample < 15000)
            {
                hr = 0;
                spo2 = 0;
            }
            else
            {
                // Push IR/Red samples into ring buffer
                ring_buffer_push(ir_demo, filter_ir_sample, 100, &ir_head);
                ring_buffer_push(red_demo, filter_red_sample, 100, &red_head);

                // Detect peak-to-peak timing
                peak_time_push(ir_demo, delta_buff, 100, ir_head, &dt_head, 30);

                // HR & SpO2 algorithm
                hr = hr_count(delta_buff, 30, 10, dt_head);
                spo2 = spo2_count(ir_demo, red_demo, 100, ir_head);
            }

            // Temperature read
            temp = tmp117_get_temp();

            display_interval = timer2_now() / 1000 - last_display;
            nrf_delay_ms(10);
        }

        // Update LCD once every ~5s
        params_display(spo2, hr, temp);
        display_interval = 0;
    }
}


//////////////////////////////////////////
/////////////// I²C / TWI CODE ///////////
//////////////////////////////////////////

void test_addr(uint8_t addr)
{
    ret_code_t err;
    uint8_t dummy = 0x00;
    uint32_t timeout = 100000;

    m_xfer_done = false;
    err = nrf_drv_twi_tx(&m_twi, addr, &dummy, 1, false);

    while ((!m_xfer_done) && (--timeout));

    if (timeout == 0)
		{
        NRF_LOG_WARNING("Timeout waiting for response from 0x%02X", addr);
		}
    else if (err == NRF_SUCCESS)
		{
        NRF_LOG_INFO("Device ACK at 0x%02X", addr);
		}
    else
		{
        NRF_LOG_INFO("No ACK at 0x%02X (err=%d)", addr, err);
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

void twi_init(void)
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

        uint32_t timeout = 100000;
        while ((!m_xfer_done) && --timeout) { __NOP(); }

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


//////////////////////////////////////////
////////////// MEASURE HELPERS ///////////
//////////////////////////////////////////

void health_measure()
{
    max30102_turnon();
    tmp117_continuous_mode();

    tmp117_get_temp();

    max30102_turnoff();
    tmp117_shutdown_mode();
}


//////////////////////////////////////////
////////////// LOG & TIMER INIT //////////
//////////////////////////////////////////

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

// Timer for periodic logs
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

    err_code = app_timer_start(m_log_timer_id, APP_TIMER_TICKS(1000), NULL);
    APP_ERROR_CHECK(err_code);
}


//////////////////////////////////////////
////////////////// PWM ///////////////////
//////////////////////////////////////////

// PWM callback
void pwm_ready_callback(uint32_t pwm_id)
{
    ready_flag = true;
}

// PWM init for LCD backlight
void backlight_pwm_init(void)
{
    ret_code_t err_code;

    app_pwm_config_t pwm_cfg =
        APP_PWM_DEFAULT_CONFIG_1CH(1000L, GC9A01_BLK_PIN);

    pwm_cfg.pin_polarity[0] = APP_PWM_POLARITY_ACTIVE_HIGH;

    err_code = app_pwm_init(&PWM1, &pwm_cfg, pwm_ready_callback);
    APP_ERROR_CHECK(err_code);

    app_pwm_enable(&PWM1);
}

// Set brightness percentage
void backlight_set(uint8_t percent)
{
    if (percent > 100) percent = 100;

    ready_flag = false;
    while (app_pwm_channel_duty_set(&PWM1, 0, percent) == NRF_ERROR_BUSY);
    while (!ready_flag);
}
