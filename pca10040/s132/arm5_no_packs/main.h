#ifndef _MAIN_H_
#define _MAIN_H_

//low level registers driver 
#include "twi_driver.h"
#include "spi_driver.h"
#include "timer_driver.h"
#include "nvmc_driver.h"
#include "gpio_driver.h"
#include "adc_driver.h"
#include "wdt_driver.h"
#include "nvmc_driver.h"

//sensors & lcd 
#include "max_driver.h"


//mode define

#define MODE_CONTINUOUS  0UL
#define MODE_PERIODIC    1UL

//flash storage define
#define CONFIG_PAGE_ADDR        0x0007F000UL
#define MODE_STATE_ADDR         (CONFIG_PAGE_ADDR + 0x00UL)
#define CAPTURE_TICKS_ADDR      (CONFIG_PAGE_ADDR + 0x04UL)
#define PERIODIC_TICKS_ADDR    	(CONFIG_PAGE_ADDR + 0x08UL)
#define ECG_SAMPLE_RATE_ADDR    (CONFIG_PAGE_ADDR + 0x0CUL)
#define PPG_SAMPLE_RATE_ADDR    (CONFIG_PAGE_ADDR + 0x10UL)
#define VITAL_CONFIG_ADDR       (CONFIG_PAGE_ADDR + 0x14UL)
#define TEMP_THRESHOLD_ADDR     (CONFIG_PAGE_ADDR + 0x18UL)
#define HR_THRESHOLD_ADDR       (CONFIG_PAGE_ADDR + 0x1CUL)
#define SPO2_THRESHOLD_ADDR     (CONFIG_PAGE_ADDR + 0x20UL)
#define WDT_TIMEOUT_ADDR				(CONFIG_PAGE_ADDR + 0x24UL)

#define DEFAULT_MODE            MODE_CONTINUOUS
#define DEFAULT_CAPTURE_TICKS   500UL   // 5s
#define DEFAULT_PERIODIC_TICKS  1000UL  // 10s
#define DEFAULT_ECG_RATE_US     4000UL   // 4ms
#define DEFAULT_PPG_RATE_US     10000UL  // 10ms
#define DEFAULT_WDT_TIMEOUT			10000   //10s
//pins define

#define TWI_SCL_PIN 28
#define TWI_SDA_PIN 29

#define SPI_SCL_PIN 12
#define SPI_SDA_PIN 13

#define LCD_SCL_PIN SPI_SCL_PIN
#define LCD_SDA_PIN SPI_SDA_PIN
#define LCD_DC_PIN  8
#define LCD_CS_PIN  9
#define LCD_RES_PIN 10

//ticks define
volatile bool sensor_ticks = false;
volatile bool ecg_ticks = false;
volatile bool ble_ticks = false;
volatile bool vital_ticks = false;
volatile bool lcd_ticks = false;
volatile int capture_counter = 0;

typedef struct
{
	uint32_t mode;
	uint32_t ppg_sample;
	uint32_t ecg_sample;
	uint32_t capture_time;
	uint32_t periodic_time;
	uint32_t wdt_timeout;
} config_t;

config_t dev_config;


#endif