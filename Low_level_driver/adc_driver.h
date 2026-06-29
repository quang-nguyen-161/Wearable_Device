#ifndef _ADC_H_
#define _ADC_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

#include "timer_driver.h"

//adc callback function pointer
typedef void (*adc_cb_t)(int16_t sample);

void saadc_init(adc_cb_t cb);
void ppi_init(NRF_TIMER_Type * p_timer, uint16_t compare_time_us);
void saadc_enable();
void saadc_disable();
void ppi_enable();
void ppi_disable();
#endif