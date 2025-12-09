#ifndef INC_GC9A01_H_
#define INC_GC9A01_H_

#include "app_error.h"
#include <stdint.h>
#include <string.h>
#include <math.h>
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"
#include "nrf_drv_spi.h"


extern const nrf_drv_spi_t spi;
extern volatile bool spi_xfer_done;
// ==== USER CONFIGURATIONS ====

#define WIDTH  240
#define HEIGHT 240

#define GC9A01_SPI           hspi1
#define GC9A01_SPI_TIMEOUT   100


#define GC9A01_CS_PIN       31 


#define GC9A01_DC_PIN       30


#define GC9A01_RST_PIN      29


#define GC9A01_MOSI_PIN			2


#define GC9A01_SCK_PIN			3


#define GC9A01_BLK_PIN			27

// === INTERNAL GPIO CONTROL ===
#define GC9A01_Select(void)    		nrf_gpio_pin_clear(GC9A01_CS_PIN)
#define GC9A01_Unselect(void)			nrf_gpio_pin_set(GC9A01_CS_PIN)
#define GC9A01_DC_Command(void)		nrf_gpio_pin_clear(GC9A01_DC_PIN)
#define GC9A01_DC_Data(void)   		nrf_gpio_pin_set(GC9A01_DC_PIN)

//color 
#define SpO2_color  0x057f
#define HR_color 	  0x07E0
#define Temp_color  0xFEA0
#define Probe_color 0xF800


typedef struct 
{
    int max_val;
    int min_val;
    int y_top;
    int y_bottom;
} probe_typedef;



// ==== API ====
void GC9A01_Init(void);
void GC9A01_Reset(void);
void GC9A01_WriteCommand(uint8_t cmd);
void GC9A01_WriteData(uint8_t data);
void GC9A01_WriteDataBuffer(uint8_t *data, uint32_t size);
void GC9A01_SetAddressWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1);
void GC9A01_DrawPixel(uint16_t x, uint16_t y, uint16_t color);

void GC9A01_Flush(const void *color_map, int32_t x1, int32_t y1, int32_t x2, int32_t y2);
void spi_config(void);
void draw_rainbow(void);
uint16_t color565(uint8_t r, uint8_t g, uint8_t b);
void GC9A01_gpio_init(void);
void GC9A01_Clear();
void GC9A01_SetNumber(uint16_t color);
void test_color(uint16_t color);
void GC9A01_turnon();
void GC9A01_shutdown();
void draw_pic(uint16_t x_pos,
              uint16_t y_pos,
              const uint16_t *bit_array,
              uint16_t x_size,
              uint16_t y_size, uint16_t color);
void draw_single_number(uint16_t x_pos,
              uint16_t y_pos,
							uint8_t num,
              const uint16_t *bit_array,
              uint16_t color);
							void draw_number(uint16_t x_pos,
                 uint16_t y_pos,
                 uint32_t number,
                 const uint16_t *bit_array,
                 uint16_t color
                 );
void draw_float_number(uint16_t x_pos,
                 uint16_t y_pos,
                 float number,
                 const uint16_t *bit_array,
                 uint16_t color
                 );
void clear_slot(uint16_t x_pos, uint16_t y_pos, uint16_t x_size, uint16_t y_size);
void params_display(uint32_t Spo2_param, uint32_t HR_param, float Temp_param);
void params_probe(int32_t probe_val, int32_t last_probe_val, uint16_t x_pos, uint16_t color, probe_typedef *cfg);
								 void params_probe_centered(int32_t probe_val, int32_t last_probe_val, uint16_t x_pos, uint16_t color);
#endif
