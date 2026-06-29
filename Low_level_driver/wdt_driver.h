#ifndef _WDT_H_
#define _WDT_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

void wdt_init(uint32_t timeout_ms);
void wdt_feed();
#endif