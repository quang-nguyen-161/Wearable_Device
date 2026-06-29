#ifndef _AD8232_H_
#define _AD8232_H_

#include "adc_driver.h"

//declared in main.h
typedef struct sensor_data sensor_data_t;
void ecg_process(int32_t *ecg_sample, sensor_data_t *sensors);
#endif