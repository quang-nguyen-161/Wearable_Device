#ifndef _NVMC_H_
#define _NVMC_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>

#include <nrf52.h>
#include <nrf52_bitfields.h>
#include "nrf_log.h"

//flash storage address: 0x00000000 - 0x0007FFFF, equal to 0 - 127 page
#define FLASH_BASE_ADDR 0x00000000UL
#define FLASH_SIZE			(512 * 1024UL)  

#define PAGE_SIZE 			4096UL // 4 KB/page
#define PAGE_COUNT 			(FLASH_SIZE/PAGE_SIZE)

#define WORD_SIZE       4UL //32 bits/word

#define FLASH_ERASED_WORD 0xFFFFFFFFUL

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
#define BLE_SEND_ADDR         	(CONFIG_PAGE_ADDR + 0x14UL)
#define TEMP_THRESHOLD_ADDR     (CONFIG_PAGE_ADDR + 0x18UL)
#define HR_THRESHOLD_ADDR       (CONFIG_PAGE_ADDR + 0x1CUL)
#define SPO2_THRESHOLD_ADDR     (CONFIG_PAGE_ADDR + 0x20UL)
#define WDT_TIMEOUT_ADDR				(CONFIG_PAGE_ADDR + 0x24UL)
#define LCD_REFRESH_ADDR				(CONFIG_PAGE_ADDR + 0x28UL)

#define DEFAULT_MODE            MODE_CONTINUOUS
#define DEFAULT_CAPTURE_TICKS   500UL   // 5s
#define DEFAULT_PERIODIC_TICKS  1000UL  // 10s
#define DEFAULT_ECG_RATE_US     4000UL   // 4ms
#define DEFAULT_PPG_RATE_US     10000UL  // 10ms
#define DEFAULT_WDT_TIMEOUT			10000   //10s
#define DEFAULT_BLE_SEND				5000    //5s
#define DEFAULT_LCD_REFRESH			5000    //5s
typedef struct
{
	uint32_t mode;
	uint32_t ppg_sample;
	uint32_t ecg_sample;
	uint32_t capture_time;
	uint32_t periodic_time;
	uint32_t ble_send_time;
	uint32_t wdt_timeout;
	uint32_t lcd_refresh;
} config_t;


void flash_init();
void flash_page_erase(uint32_t page_addr);
void flash_erase_all();
void flash_write(uint32_t dest, const void *src, size_t len);
void flash_read(uint32_t src, void *dest, size_t len);
void flash_default_config(config_t *dev_config);
void flash_save_config(const config_t *dev_config);
#endif