#ifndef _CMD_H_
#define _CMD_H_

#include <stdint.h>
#include <stdbool.h>

bool cmd_rx_handle(const uint8_t *data, uint16_t len, uint16_t max_samples);
#endif