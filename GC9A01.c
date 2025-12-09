
#include "gc9a01.h"
#include "font.h"

const nrf_drv_spi_t spi = NRF_DRV_SPI_INSTANCE(0);
volatile bool spi_xfer_done = false;




// === SPI FUNCTION ===
void spi_event_handler(nrf_drv_spi_evt_t const * p_event,
                       void *                    p_context)
{
    spi_xfer_done = true;
}
void spi_config()
{
    nrf_drv_spi_config_t spi_config = NRF_DRV_SPI_DEFAULT_CONFIG;
    spi_config.ss_pin   = 31;
    spi_config.miso_pin = NRF_DRV_SPI_PIN_NOT_USED;
    spi_config.mosi_pin = 2;
    spi_config.sck_pin  = 3;
		spi_config.frequency    = NRF_DRV_SPI_FREQ_8M;
    APP_ERROR_CHECK(nrf_drv_spi_init(&spi, &spi_config, spi_event_handler, NULL));

}




// === RESET ===
void GC9A01_Reset(void)
{
	{nrf_gpio_pin_clear(GC9A01_RST_PIN);}
	nrf_delay_ms(20);
	{nrf_gpio_pin_set(GC9A01_RST_PIN);}
	nrf_delay_ms(120);
}

// === COMMAND/DATA ===
void GC9A01_WriteCommand(uint8_t cmd)
{
	GC9A01_Select();
	GC9A01_DC_Command();
	 spi_xfer_done = false;

        APP_ERROR_CHECK(nrf_drv_spi_transfer(&spi, &cmd, 1, NULL, 0));

        while (!spi_xfer_done)
        {
            __WFE();
        }
	GC9A01_Unselect();
}

void GC9A01_WriteData(uint8_t data)
{
	GC9A01_Select();
	GC9A01_DC_Data();
	 spi_xfer_done = false;

       APP_ERROR_CHECK(nrf_drv_spi_transfer(&spi, &data, 1, NULL, 0));

        while (!spi_xfer_done)
        {
            __WFE();
        }
	GC9A01_Unselect();
}

void GC9A01_WriteDataBuffer(uint8_t *data, uint32_t size)
{
	GC9A01_Select();
	GC9A01_DC_Data();

	 spi_xfer_done = false;

        APP_ERROR_CHECK(nrf_drv_spi_transfer(&spi, data, size, NULL, 0));

        while (!spi_xfer_done)
        {
            __WFE();
        }
	GC9A01_Unselect();

}


// === SET ADDRESS WINDOW ===
void GC9A01_SetAddressWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1)
{
	GC9A01_WriteCommand(0x2A);  // Column
	uint8_t col_data[] = {x0 >> 8, x0 & 0xFF, x1 >> 8, x1 & 0xFF};
	GC9A01_WriteDataBuffer(col_data, 4);

	GC9A01_WriteCommand(0x2B);  // Row
	uint8_t row_data[] = {y0 >> 8, y0 & 0xFF, y1 >> 8, y1 & 0xFF};
	GC9A01_WriteDataBuffer(row_data, 4);

	GC9A01_WriteCommand(0x2C);  // Write
}

// === DRAW PIXEL ===
void GC9A01_DrawPixel(uint16_t x, uint16_t y, uint16_t color)
{
	GC9A01_SetAddressWindow(x, y, x, y);
	uint8_t data[] = {color >> 8, color & 0xFF};
	GC9A01_WriteDataBuffer(data, 2);
#if USE_DMA
	while (tx_busy);
#endif
}
void GC9A01_Clear()
{
	for (int i = 0; i < WIDTH - 1; i++)
{
    for (int j = 0; j < HEIGHT - 1; j++)
    {
			
        GC9A01_DrawPixel(i, j,  0x0000);
}}}

void GC9A01_SetBig_Number(uint16_t x, uint16_t y, uint16_t color, uint8_t number)
{
		
}



void GC9A01_gpio_init()
{
	nrf_gpio_cfg_output(GC9A01_BLK_PIN);
	nrf_gpio_cfg_output(GC9A01_DC_PIN);
	nrf_gpio_cfg_output(GC9A01_RST_PIN);
	nrf_gpio_cfg_output(GC9A01_CS_PIN);
	nrf_gpio_pin_set(GC9A01_BLK_PIN);
}

// === DISPLAY INIT ===
void GC9A01_Init(void)
{
	GC9A01_gpio_init();
	GC9A01_Reset();

	GC9A01_WriteCommand(0xEF);
	GC9A01_WriteCommand(0xEB);
	GC9A01_WriteData(0x14);

	GC9A01_WriteCommand(0xFE);
	GC9A01_WriteCommand(0xEF);

	GC9A01_WriteCommand(0xEB);
	GC9A01_WriteData(0x14);

	GC9A01_WriteCommand(0x84);
	GC9A01_WriteData(0x40);

	GC9A01_WriteCommand(0x85);
	GC9A01_WriteData(0xFF);

	GC9A01_WriteCommand(0x86);
	GC9A01_WriteData(0xFF);

	GC9A01_WriteCommand(0x87);
	GC9A01_WriteData(0xFF);

	GC9A01_WriteCommand(0x88);
	GC9A01_WriteData(0x0A);

	GC9A01_WriteCommand(0x89);
	GC9A01_WriteData(0x21);

	GC9A01_WriteCommand(0x8A);
	GC9A01_WriteData(0x00);

	GC9A01_WriteCommand(0x8B);
	GC9A01_WriteData(0x80);

	GC9A01_WriteCommand(0x8C);
	GC9A01_WriteData(0x01);

	GC9A01_WriteCommand(0x8D);
	GC9A01_WriteData(0x01);

	GC9A01_WriteCommand(0x8E);
	GC9A01_WriteData(0xFF);

	GC9A01_WriteCommand(0x8F);
	GC9A01_WriteData(0xFF);


	GC9A01_WriteCommand(0xB6);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x20);

	GC9A01_WriteCommand(0x36);
	GC9A01_WriteData(0x08);//Set as vertical screen

	GC9A01_WriteCommand(0x3A);
	GC9A01_WriteData(0x05);


	GC9A01_WriteCommand(0x90);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x08);

	GC9A01_WriteCommand(0xBD);
	GC9A01_WriteData(0x06);

	GC9A01_WriteCommand(0xBC);
	GC9A01_WriteData(0x00);

	GC9A01_WriteCommand(0xFF);
	GC9A01_WriteData(0x60);
	GC9A01_WriteData(0x01);
	GC9A01_WriteData(0x04);

	GC9A01_WriteCommand(0xC3);
	GC9A01_WriteData(0x13);
	GC9A01_WriteCommand(0xC4);
	GC9A01_WriteData(0x13);

	GC9A01_WriteCommand(0xC9);
	GC9A01_WriteData(0x22);

	GC9A01_WriteCommand(0xBE);
	GC9A01_WriteData(0x11);

	GC9A01_WriteCommand(0xE1);
	GC9A01_WriteData(0x10);
	GC9A01_WriteData(0x0E);

	GC9A01_WriteCommand(0xDF);
	GC9A01_WriteData(0x21);
	GC9A01_WriteData(0x0c);
	GC9A01_WriteData(0x02);

	GC9A01_WriteCommand(0xF0);
	GC9A01_WriteData(0x45);
	GC9A01_WriteData(0x09);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x26);
	GC9A01_WriteData(0x2A);

	GC9A01_WriteCommand(0xF1);
	GC9A01_WriteData(0x43);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x72);
	GC9A01_WriteData(0x36);
	GC9A01_WriteData(0x37);
	GC9A01_WriteData(0x6F);


	GC9A01_WriteCommand(0xF2);
	GC9A01_WriteData(0x45);
	GC9A01_WriteData(0x09);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x26);
	GC9A01_WriteData(0x2A);

	GC9A01_WriteCommand(0xF3);
	GC9A01_WriteData(0x43);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x72);
	GC9A01_WriteData(0x36);
	GC9A01_WriteData(0x37);
	GC9A01_WriteData(0x6F);

	GC9A01_WriteCommand(0xED);
	GC9A01_WriteData(0x1B);
	GC9A01_WriteData(0x0B);

	GC9A01_WriteCommand(0xAE);
	GC9A01_WriteData(0x77);

	GC9A01_WriteCommand(0xCD);
	GC9A01_WriteData(0x63);


	GC9A01_WriteCommand(0x70);
	GC9A01_WriteData(0x07);
	GC9A01_WriteData(0x07);
	GC9A01_WriteData(0x04);
	GC9A01_WriteData(0x0E);
	GC9A01_WriteData(0x0F);
	GC9A01_WriteData(0x09);
	GC9A01_WriteData(0x07);
	GC9A01_WriteData(0x08);
	GC9A01_WriteData(0x03);

	GC9A01_WriteCommand(0xE8);
	GC9A01_WriteData(0x34);

	GC9A01_WriteCommand(0x62);
	GC9A01_WriteData(0x18);
	GC9A01_WriteData(0x0D);
	GC9A01_WriteData(0x71);
	GC9A01_WriteData(0xED);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x18);
	GC9A01_WriteData(0x0F);
	GC9A01_WriteData(0x71);
	GC9A01_WriteData(0xEF);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x70);

	GC9A01_WriteCommand(0x63);
	GC9A01_WriteData(0x18);
	GC9A01_WriteData(0x11);
	GC9A01_WriteData(0x71);
	GC9A01_WriteData(0xF1);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x18);
	GC9A01_WriteData(0x13);
	GC9A01_WriteData(0x71);
	GC9A01_WriteData(0xF3);
	GC9A01_WriteData(0x70);
	GC9A01_WriteData(0x70);

	GC9A01_WriteCommand(0x64);
	GC9A01_WriteData(0x28);
	GC9A01_WriteData(0x29);
	GC9A01_WriteData(0xF1);
	GC9A01_WriteData(0x01);
	GC9A01_WriteData(0xF1);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x07);

	GC9A01_WriteCommand(0x66);
	GC9A01_WriteData(0x3C);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0xCD);
	GC9A01_WriteData(0x67);
	GC9A01_WriteData(0x45);
	GC9A01_WriteData(0x45);
	GC9A01_WriteData(0x10);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x00);

	GC9A01_WriteCommand(0x67);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x3C);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x01);
	GC9A01_WriteData(0x54);
	GC9A01_WriteData(0x10);
	GC9A01_WriteData(0x32);
	GC9A01_WriteData(0x98);

	GC9A01_WriteCommand(0x74);
	GC9A01_WriteData(0x10);
	GC9A01_WriteData(0x85);
	GC9A01_WriteData(0x80);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x00);
	GC9A01_WriteData(0x4E);
	GC9A01_WriteData(0x00);

	GC9A01_WriteCommand(0x98);
	GC9A01_WriteData(0x3e);
	GC9A01_WriteData(0x07);

	GC9A01_WriteCommand(0x51);
	GC9A01_WriteData(0x00);


	GC9A01_WriteCommand(0x35);
	GC9A01_WriteCommand(0x21);
	
	GC9A01_WriteCommand(0x11);
	nrf_delay_ms(120);
	GC9A01_WriteCommand(0x29);
	nrf_delay_ms(20);
	NRF_LOG_INFO("gc9a01 init ok");
	NRF_LOG_FLUSH();
}

uint16_t color565(uint8_t r, uint8_t g, uint8_t b)
{
    return ((r & 0xF8) << 8) | ((g & 0xFC) << 3) | (b >> 3);
}

void GC9A01_sleepmode_on()
{
	GC9A01_WriteCommand(0x10);
	nrf_delay_ms(5);
}
void GC9A01_sleepmode_off()
{
	GC9A01_WriteCommand(0x11);
	nrf_delay_ms(120);
}

void GC9A01_display_off()
{
	GC9A01_WriteCommand(0x28);
		nrf_delay_ms(5);
}

void GC9A01_display_on()
{
	GC9A01_WriteCommand(0x29);
		nrf_delay_ms(5);
}

void GC9A01_shutdown()
{
	GC9A01_sleepmode_on();
	GC9A01_display_off();
	nrf_gpio_pin_clear(GC9A01_BLK_PIN);
}

void GC9A01_turnon()
{
	nrf_gpio_pin_clear(GC9A01_BLK_PIN);
	GC9A01_sleepmode_off();
	GC9A01_display_on();
}

void test_color(uint16_t color)
{
	for (int i = 0; i < WIDTH - 1; i++)
{
    for (int j = 0; j < HEIGHT - 1; j++)
    {
			GC9A01_DrawPixel(i,j,color);
		}
}}
void clear_slot(uint16_t x_pos, uint16_t y_pos, uint16_t x_size, uint16_t y_size)
{
	for (int i =x_pos; i < x_pos + x_size - 1; i++)
{
    for (int j = y_pos; j < y_pos + y_size - 1; j++)
    {
			
        GC9A01_DrawPixel(i, j,  0x0000);
}
	}}
void draw_pic(uint16_t x_pos,
              uint16_t y_pos,
              const uint16_t *bit_array,
              uint16_t x_size,
              uint16_t y_size, uint16_t color)
{
	
    for (uint16_t i = x_pos; i < x_pos + x_size; i++)
    {
        for (uint16_t j = y_pos; j < y_pos + y_size; j++)
        {
            uint16_t bmp_x = i - x_pos;   // 0 ? x_size-1
            uint16_t bmp_y = j - y_pos;   // 0 ? y_size-1

            uint32_t index = bmp_y * x_size + bmp_x;

            uint16_t pixel = ~bit_array[index];
					
					//if (pixel == 0) continue;	
							if (pixel != 0) pixel = color;
            GC9A01_DrawPixel(i, j, pixel);
        }
    }
}
void draw_single_number(uint16_t x_pos,
              uint16_t y_pos,
							uint8_t num,
              const uint16_t *bit_array,
              uint16_t color)
{
	
    for (uint16_t i = x_pos; i < x_pos + 15; i++)
    {
        for (uint16_t j = y_pos; j < y_pos + 20; j++)
        {
            uint16_t bmp_x = i - x_pos;   // 0 ? x_size-1
            uint16_t bmp_y = j - y_pos;   // 0 ? y_size-1

            uint32_t index = (bmp_y * 15 + bmp_x) + (num * 300);

            uint16_t pixel = ~bit_array[index];
						//if (pixel == 0) continue;
						if (pixel != 0) pixel = color;
            GC9A01_DrawPixel(i, j, pixel);
        }
    }
}

void draw_number(uint16_t x_pos,
                 uint16_t y_pos,
                 uint32_t number,
                 const uint16_t *bit_array,
                 uint16_t color
                 )
{
    // Convert number to a temporary buffer (reverse order)
    uint8_t buffer[10];
    uint8_t len = 0;

    if (number == 0) {
        buffer[len++] = 0;
    } else {
        while (number > 0) {
            buffer[len++] = number % 10;
            number /= 10;
        }
    }

    // Draw digits from left to right
		if (len > 3) len = 3;
    for (int8_t i = len - 1; i >= 0; i--) {
        uint8_t d = buffer[i];
        draw_single_number(x_pos, y_pos, d, bit_array, color);
				
				draw_single_number(x_pos + 15, y_pos, 11, bit_array, color);
				draw_single_number(x_pos + 30, y_pos, 11, bit_array, color);
			
        x_pos += 15;  // Move to next digit
    }
}
	
void draw_float_number(uint16_t x_pos,
                 uint16_t y_pos,
                 float number,
                 const uint16_t *bit_array,
                 uint16_t color
                 )
{
    uint8_t buffer[10];
    uint8_t len = 0;
    uint32_t temp = (uint32_t)(number * 10);

    // Convert number to reversed digits
    if (temp == 0) {
        buffer[len++] = 0;
    } else {
        while (temp > 0) {
            buffer[len++] = temp % 10;  // store digit
            temp /= 10;
        }
    }

    // Draw digits from left to right
    for (int8_t i = len - 1; i >= 0; i--) {

        // Insert dot BEFORE printing the last 1 digits
        if (i == 0) {
            draw_single_number(x_pos, y_pos, 10, bit_array, color);  // 10 = dot
            x_pos += 15;
        }

        uint8_t d = buffer[i];
        draw_single_number(x_pos, y_pos, d, bit_array, color);
        x_pos += 15;
    }
}

void params_display(uint32_t Spo2_param, uint32_t HR_param, float Temp_param)
{
	draw_pic(40,30,Spo2_pic,90,20,SpO2_color);
			draw_number(135,30,Spo2_param,number,SpO2_color);
			draw_pic(180,30,percent,20,20,SpO2_color);
			
			draw_pic(40,55,HR_pic,60,15,HR_color);
			draw_number(105,55,HR_param,number,HR_color);
			draw_pic(160,55,bpm,43,20,HR_color);
			
			
			draw_pic(40,80,Temp_pic,70,25,Temp_color);
			draw_float_number(115,80,Temp_param,number,Temp_color);
			draw_pic(180,80,degree,20,20,Temp_color);
}


void params_probe(int32_t probe_val, int32_t last_probe_val, uint16_t x_pos, uint16_t color, probe_typedef *cfg)
{
    // Clamp probe values
    if (probe_val > cfg->max_val) probe_val = cfg->max_val;
    if (probe_val < cfg->min_val) probe_val = cfg->min_val;
    if (last_probe_val > cfg->max_val) last_probe_val = cfg->max_val;
    if (last_probe_val < cfg->min_val) last_probe_val = cfg->min_val;

    // Map values from min_val->max_val to y_bottom->y_top
    int current_y = cfg->y_bottom - ((probe_val - cfg->min_val) * (cfg->y_bottom - cfg->y_top) / (cfg->max_val - cfg->min_val));
    int last_y    = cfg->y_bottom - ((last_probe_val - cfg->min_val) * (cfg->y_bottom - cfg->y_top) / (cfg->max_val - cfg->min_val));

    // Clamp to screen bounds
    if (current_y < cfg->y_top) current_y = cfg->y_top;
    if (current_y > cfg->y_bottom) current_y = cfg->y_bottom;
    if (last_y < cfg->y_top) last_y = cfg->y_top;
    if (last_y > cfg->y_bottom) last_y = cfg->y_bottom;

    // Clear previous vertical line
    for (int i = cfg->y_top; i <= cfg->y_bottom; i++)
        GC9A01_DrawPixel(x_pos, i, 0x0000);

    // Draw new probe
    int y_start = (current_y < last_y) ? current_y : last_y;
    int y_end   = (current_y > last_y) ? current_y : last_y;

    for (int i = y_start; i <= y_end; i++)
        GC9A01_DrawPixel(x_pos, i, color);
}





