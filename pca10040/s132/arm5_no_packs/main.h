#ifndef _MAIN_H_
#define _MAIN_H_

//low level registers driver 
#include "twi_driver.h"
#include "spi_driver.h"
#include "timer_driver.h"
#include "nvmc_driver.h"
#include "gpio_driver.h"
#include "adc_driver.h"
#include "wdt_driver.h"
#include "nvmc_driver.h"
#include "ble_driver.h"
//sensors & lcd 
#include "max_driver.h"
#include "tmp117_driver.h"
#include "gc9a01_driver.h"
#include "ad8232_driver.h"

//pins define

#define TWI_SCL_PIN 12
#define TWI_SDA_PIN 13

#define SPI_SCL_PIN 28
#define SPI_SDA_PIN 29

//ticks define
volatile bool sensor_ticks = false;
volatile bool ecg_ticks = false;
volatile bool ble_ticks = false;
volatile bool vital_ticks = false;
volatile bool lcd_ticks = false;
volatile int capture_counter = 0;


typedef struct sensor_data {
    uint8_t  hr_ppg;     
    uint8_t  hr_ecg;     
    uint8_t  spo2;        
    float    temp;        
    bool     temp_valid;  
    bool     hr_ppg_valid;
    bool     spo2_valid;  
    bool     hr_ecg_valid;
} sensor_data_t;

config_t dev_config;
sensor_data_t sensors;

#endif