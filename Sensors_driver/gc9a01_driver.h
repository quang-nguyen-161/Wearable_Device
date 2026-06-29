#ifndef _LCD_H_
#define _LCD_H_

#include "gpio_driver.h"
#include "spi_driver.h"



#include "nrf_delay.h"


#define LCD_SCL_PIN SPI_SCL_PIN
#define LCD_SDA_PIN SPI_SDA_PIN
#define LCD_DC_PIN  8
#define LCD_CS_PIN  9
#define LCD_RES_PIN 10


#define RESET_ON            gpio_set(LCD_RES_PIN)
#define RESET_OFF           gpio_clear(LCD_RES_PIN)
#define DC_ON               gpio_set(LCD_DC_PIN)
#define DC_OFF              gpio_clear(LCD_DC_PIN)
#define CS_ON               gpio_set(LCD_CS_PIN)
#define CS_OFF              gpio_clear(LCD_CS_PIN)

// cmd code
#define COL_ADDR_SET        0x2A
#define ROW_ADDR_SET        0x2B
#define MEM_WR              0x2C
#define MEM_WR_CONT         0x3C
#define COLOR_MODE          0x3A
#define COLOR_MODE__12_BIT  0x03
#define COLOR_MODE__16_BIT  0x05
#define COLOR_MODE__18_BIT  0x06
#define SLPIN               0x10
#define SLPOUT              0x11


// colors
#define	BLACK               0x0000
#define	BLUE                0x001F
#define	RED                 0xF800
#define	GREEN               0x07E0
#define CYAN                0x07FF
#define MAGENTA             0xF81F
#define YELLOW              0xFFE0
#define WHITE               0xFFFF
// display size
#define GC9A01A_Width       240
#define GC9A01A_Height      240
// Func
#define swap(a,b) {int16_t t=a;a=b;b=t;}
#define RGB565(r, g, b)         (((r & 0xF8) << 8) | ((g & 0xFC) << 3) | ((b & 0xF8) >> 3))

void gc9a01_init(void);
#endif
