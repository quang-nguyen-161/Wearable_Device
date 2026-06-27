#ifndef _ADC_H_
#define _ADC_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

#include "timer_driver.h"

void ppi_init(NRF_TIMER_Type *p_timer, NRF_SAADC_Type *p_saadc);
void saadc_init(NRF_SAADC_Type* p_reg, IRQn_Type irq, uint8_t channel);
void saadc_buffer_init(NRF_SAADC_Type *p_reg, int16_t *buffer, uint32_t len);
void saadc_start(NRF_SAADC_Type *p_reg, NRF_TIMER_Type *p_timer, int16_t *buffer);
#endif