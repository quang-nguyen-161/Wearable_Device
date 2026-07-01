#ifndef _TIMER_H_
#define _TIMER_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

//timer callback function pointer
typedef void (*timer_cb_t)();


void timer_compare_init(NRF_TIMER_Type* p_reg, timer_cb_t cb , uint32_t compare_time_us);
void timer_ppi_init(NRF_TIMER_Type* p_reg, uint32_t compare_time_us);
void timer_init_us(NRF_TIMER_Type *p_reg);
void timer_start(NRF_TIMER_Type *p_reg);
void timer_stop(NRF_TIMER_Type *p_reg);
void timer_clear(NRF_TIMER_Type *p_reg);
uint32_t timer_now_us(NRF_TIMER_Type *p_reg);

#endif