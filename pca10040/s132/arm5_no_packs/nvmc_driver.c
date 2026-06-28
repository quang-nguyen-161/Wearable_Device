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