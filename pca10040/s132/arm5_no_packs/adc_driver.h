#ifndef _ADC_H_
#define _ADC_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

#include "timer_driver.h"

void saadc_init(void);
void ppi_init(NRF_TIMER_Type * p_timer, uint16_t compare_time_us);
bool adc_get_sample(int16_t *p_out);
#endif