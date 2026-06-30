#include "nvmc_driver.h"

// non-volatile memory controller only using low level registers
// follow instruction on https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/nvmc.html
//memory map at https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/memory.html?section=memorymap
//erased bits are set to "1"

void flash_wait_ready()
{
	//wait while nvmc is busy
	while (NRF_NVMC->READY == NVMC_READY_READY_Busy);
}

void flash_init()
{
	
	flash_wait_ready();
	
	//enable cache
	NRF_NVMC->ICACHECNF = (NVMC_ICACHECNF_CACHEEN_Enabled << NVMC_ICACHECNF_CACHEEN_Pos);
	
	//read mode config
	NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Ren << NVMC_CONFIG_WEN_Pos);

}

void flash_page_erase(uint32_t page_addr)
{
	//aligned the address, for example 0x0012 -> 0x0000
	uint32_t aligned = page_addr & ~(PAGE_SIZE - 1U);
	
	flash_wait_ready();
	
	//erase mode config
	NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Een << NVMC_CONFIG_WEN_Pos);
	
	//erase align page
	NRF_NVMC->ERASEPAGE = aligned;
	
	//wait for erase operation
	flash_wait_ready();
	
	//return to read mode
	NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Ren << NVMC_CONFIG_WEN_Pos);
}

void flash_erase_all()
{
	flash_wait_ready();
	
	//erase all
	NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Een << NVMC_CONFIG_WEN_Pos);
	NRF_NVMC->ERASEALL = NVMC_ERASEALL_ERASEALL_Erase; // erased all including UICR
	
	flash_wait_ready();
	
	//return to read mode
	NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Ren << NVMC_CONFIG_WEN_Pos);
}

// write destination must be a multiple of 4 because a word size is 32bits
// write can only be operates on full erase dest (all bits are "1")

void flash_write(uint32_t dest, const void *src, size_t len)
{
	//convert to 4-byte word
	const uint32_t *src_word = (const uint32_t *)src;
	
	volatile uint32_t *dest_word = (volatile uint32_t *)dest;
  size_t word_count = len / WORD_SIZE;
	
	 flash_wait_ready();
	
	//write mode config
	 NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Wen << NVMC_CONFIG_WEN_Pos);
	
	for (size_t i = 0; i < word_count; i++)
    {
        dest_word[i] = src_word[i];
 
        flash_wait_ready();
    }
		
	//return to read mode
	NRF_NVMC->CONFIG = (NVMC_CONFIG_WEN_Ren << NVMC_CONFIG_WEN_Pos);
}

void flash_read(uint32_t src, void *dest, size_t len)
{
	 memcpy(dest, (const void *)src, len);
}

static uint32_t flash_read_default(uint32_t addr, uint32_t default_value, uint32_t min, uint32_t max)
{
    uint32_t value;

    flash_read(addr, &value, WORD_SIZE);

		//check if flash addr emty
    if (value == FLASH_ERASED_WORD)
    {
        flash_write(addr, &default_value, WORD_SIZE);
        return default_value;
    }

    //check if flash addr invalid
    if (value < min || value > max)
    {
        flash_write(addr, &default_value, WORD_SIZE);
        return default_value;
    }
    return value;
}

void flash_default_config(config_t *dev_config)
{
    dev_config->mode = flash_read_default(
        MODE_STATE_ADDR,
        DEFAULT_MODE,
        MODE_CONTINUOUS,
        MODE_PERIODIC);

    dev_config->ppg_sample = flash_read_default(
        PPG_SAMPLE_RATE_ADDR,
        DEFAULT_PPG_RATE_US,
        1000,
        1000000);

    dev_config->ecg_sample = flash_read_default(
        ECG_SAMPLE_RATE_ADDR,
        DEFAULT_ECG_RATE_US,
        100,
        100000);

    dev_config->capture_time = flash_read_default(
        CAPTURE_TICKS_ADDR,
        DEFAULT_CAPTURE_TICKS,
        1,
        3600000);

    dev_config->periodic_time = flash_read_default(
        PERIODIC_TICKS_ADDR,
        DEFAULT_PERIODIC_TICKS,
        1,
        3600000);

    dev_config->wdt_timeout = flash_read_default(
        WDT_TIMEOUT_ADDR,
        DEFAULT_WDT_TIMEOUT,
        100,
        60000);
		dev_config->ble_send_time = flash_read_default(
        BLE_SEND_ADDR,
        DEFAULT_BLE_SEND,
        100,
        60000);
		dev_config->lcd_refresh = flash_read_default(
        LCD_REFRESH_ADDR,
        DEFAULT_LCD_REFRESH,
        100,
        60000);

    NRF_LOG_INFO("mode          : %u", dev_config->mode);
    NRF_LOG_INFO("ppg_sample    : %u", dev_config->ppg_sample);
    NRF_LOG_INFO("ecg_sample    : %u", dev_config->ecg_sample);
    NRF_LOG_INFO("capture_time  : %u", dev_config->capture_time);
    NRF_LOG_INFO("periodic_time : %u", dev_config->periodic_time);
		NRF_LOG_INFO("ble_send_time : %u", dev_config->ble_send_time);
    NRF_LOG_INFO("wdt_timeout   : %u", dev_config->wdt_timeout);
		NRF_LOG_INFO("lcd_refresh   : %u", dev_config->lcd_refresh);
}

void flash_save_config(const config_t *dev_config)
{
    flash_page_erase(MODE_STATE_ADDR);

    flash_write(MODE_STATE_ADDR,      &dev_config->mode,          WORD_SIZE);
    flash_write(PPG_SAMPLE_RATE_ADDR, &dev_config->ppg_sample,    WORD_SIZE);
    flash_write(ECG_SAMPLE_RATE_ADDR, &dev_config->ecg_sample,    WORD_SIZE);
    flash_write(CAPTURE_TICKS_ADDR,   &dev_config->capture_time,  WORD_SIZE);
    flash_write(PERIODIC_TICKS_ADDR,  &dev_config->periodic_time, WORD_SIZE);
    flash_write(WDT_TIMEOUT_ADDR,     &dev_config->wdt_timeout,   WORD_SIZE);
    flash_write(BLE_SEND_ADDR,        &dev_config->ble_send_time, WORD_SIZE);
    flash_write(LCD_REFRESH_ADDR,     &dev_config->lcd_refresh,   WORD_SIZE);

    NRF_LOG_INFO("mode          : %u", dev_config->mode);
    NRF_LOG_INFO("ppg_sample    : %u", dev_config->ppg_sample);
    NRF_LOG_INFO("ecg_sample    : %u", dev_config->ecg_sample);
    NRF_LOG_INFO("capture_time  : %u", dev_config->capture_time);
    NRF_LOG_INFO("periodic_time : %u", dev_config->periodic_time);
		NRF_LOG_INFO("ble_send_time : %u", dev_config->ble_send_time);
    NRF_LOG_INFO("wdt_timeout   : %u", dev_config->wdt_timeout);
		NRF_LOG_INFO("lcd_refresh   : %u", dev_config->lcd_refresh);
}

