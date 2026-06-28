#ifndef _NVMC_H_
#define _NVMC_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>

#include <nrf52.h>
#include <nrf52_bitfields.h>

#define FLASH_BASE_ADDR 0x00000000UL
#define FLASH_SIZE			(512 * 1024UL)  // 0x8000

#define PAGE_SIZE 			4096UL // 4 KB/page
#define PAGE_COUNT 			(FLASH_SIZE/PAGE_SIZE)

#define WORD_SIZE       4UL //32 bits/word

#endif