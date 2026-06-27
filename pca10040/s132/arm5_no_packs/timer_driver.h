#ifndef _TIMER_H_
#define _TIMER_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

void timer_compare_init(NRF_TIMER_Type* p_reg, IRQn_Type irq, uint32_t compare_time_us);
#endif