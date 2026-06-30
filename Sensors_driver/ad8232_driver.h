#ifndef _AD8232_H_
#define _AD8232_H_

#include "adc_driver.h"
#include "helper.h"

//declared in main.h
typedef struct sensor_data sensor_data_t;
float ecg_filter_process(uint32_t sample);
void ecg_process(rb_typedef_t *ecg_buff, uint8_t *hr);
#endif