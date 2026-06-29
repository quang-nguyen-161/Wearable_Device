#ifndef _NVMC_H_
#define _NVMC_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>

#include <nrf52.h>
#include <nrf52_bitfields.h>

//flash storage address: 0x00000000 - 0x0007FFFF, equal to 0 - 127 page
#define FLASH_BASE_ADDR 0x00000000UL
#define FLASH_SIZE			(512 * 1024UL)  

#define PAGE_SIZE 			4096UL // 4 KB/page
#define PAGE_COUNT 			(FLASH_SIZE/PAGE_SIZE)

#define WORD_SIZE       4UL //32 bits/word

#define FLASH_ERASED_WORD 0xFFFFFFFFUL


void flash_init();
void flash_page_erase(uint32_t page_addr);
void flash_erase_all();
void flash_write(uint32_t dest, const void *src, size_t len);
void flash_read(uint32_t src, void *dest, size_t len);

#endif