#ifndef _SPI_H_
#define _SPI_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

void spim_init(NRF_SPIM_Type* p_reg, uint32_t scl_pin, uint32_t sda_pin);
void spim_tx(NRF_SPIM_Type* p_reg, uint8_t const *tx_buf, uint8_t len);

#endif