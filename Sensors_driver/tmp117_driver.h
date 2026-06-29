#ifndef _TMP117_H_
#define _TMP117_H_

#include <stdint.h>
#include <stdbool.h>
#include "twi_driver.h"
#include "nrf_delay.h"

#define TMP117_GND_ADDR 0x48
#define TMP117_VCC_ADDR	0x49

#define TMP117_DEVICE_ID    0x0117

#define TMP117_TempReg        0x00
#define TMP117_ConfigReg      0x01
#define TMP117_TempHighLimit  0x02
#define TMP117_TempLowLimit   0x03
#define TMP117_EEPROM_Unlock  0x04
#define TMP117_EEPROM1        0x05
#define TMP117_EEPROM2        0x06
#define TMP117_Temp_Offset    0x07
#define TMP117_EEPROM3        0x08
#define TMP117_ID_Reg         0x0F

#define TMP117_RESOLUTION   0.0078125f

#define TMP117_TEMP_MIN     (-55.0f)
#define TMP117_TEMP_MAX     (150.0f)
#define TMP117_TEMP_INVALID (-999.0f)

#define TMP117_CONTINUOUS_CONVERSION_MODE 0x00
#define TMP117_ONE_SHOT_MODE              0x03
#define TMP117_SHUTDOWN_MODE              0x01

typedef enum {
    NOAVE = 0,
    AVE8,
    AVE32,
    AVE64
} TMP117_AVE;


bool tmp117_init(void);
void tmp117_shutdown_mode(void);
void tmp117_continuous_mode(void);
float tmp117_get_temp(void);
void tmp117_wake_oneshot(void);

#endif