#ifndef _GPIO_H_
#define _GPIO_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

void gpio_output_cfg(uint32_t pin);
void gpio_set(uint32_t pin);
void gpio_clear(uint32_t pin);
void gpio_toggle(uint32_t pin);
#endif