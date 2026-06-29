#ifndef _TWI_H_
#define _TWI_H_

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <nrf52.h>
#include <nrf52_bitfields.h>

void twim_init(NRF_TWIM_Type * p_reg, uint8_t scl_pin, uint8_t sda_pin);

void twim_tx(NRF_TWIM_Type * p_reg, uint8_t address,
             uint8_t const * p_buf, size_t len);
void twim_txrx(NRF_TWIM_Type * p_reg, uint8_t address,
               uint8_t const * p_tx_buf, size_t tx_len,
               uint8_t       * p_rx_buf, size_t rx_len);
#endif