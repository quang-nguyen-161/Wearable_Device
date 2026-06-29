#include "gc9a01_driver.h"

void gc9a01_write_cmd(uint8_t cmd) 
{
    DC_OFF;
    CS_OFF;
    spim_tx(NRF_SPIM1,&cmd, sizeof(cmd));
    CS_ON;
}

void gc9a01_write_data(uint8_t *data, size_t len) 
{
    DC_ON;
    CS_OFF;
    spim_tx(NRF_SPIM1,data, len);
    CS_ON;
}

void gc9a01_write_byte(uint8_t val) 
{
    gc9a01_write_data(&val, sizeof(val));
}

void gc9a01_write(uint8_t *data, size_t len) 
{
    gc9a01_write_cmd(MEM_WR);
    gc9a01_write_data(data, len);
}

void gc9a01_write_continue(uint8_t *data, size_t len) {
    gc9a01_write_cmd(MEM_WR_CONT);
    gc9a01_write_data(data, len);
}

void gc9a01_init(void) {
    
		gpio_output_cfg(LCD_CS_PIN);
    gpio_output_cfg(LCD_DC_PIN);
    gpio_output_cfg(LCD_RES_PIN);
	
    CS_ON;
    nrf_delay_ms(5);
    RESET_OFF;
    nrf_delay_ms(10);
    RESET_ON;
    nrf_delay_ms(120);
    
    /* Initial Sequence */ 
    
    gc9a01_write_cmd(0xEF);
    
    gc9a01_write_cmd(0xEB);
    gc9a01_write_byte(0x14);
    
    gc9a01_write_cmd(0xFE);
    gc9a01_write_cmd(0xEF);
    
    gc9a01_write_cmd(0xEB);
    gc9a01_write_byte(0x14);
    
    gc9a01_write_cmd(0x84);
    gc9a01_write_byte(0x40);
    
    gc9a01_write_cmd(0x85);
    gc9a01_write_byte(0xFF);
    
    gc9a01_write_cmd(0x86);
    gc9a01_write_byte(0xFF);
    
    gc9a01_write_cmd(0x87);
    gc9a01_write_byte(0xFF);
    
    gc9a01_write_cmd(0x88);
    gc9a01_write_byte(0x0A);
    
    gc9a01_write_cmd(0x89);
    gc9a01_write_byte(0x21);
    
    gc9a01_write_cmd(0x8A);
    gc9a01_write_byte(0x00);
    
    gc9a01_write_cmd(0x8B);
    gc9a01_write_byte(0x80);
    
    gc9a01_write_cmd(0x8C);
    gc9a01_write_byte(0x01);
    
    gc9a01_write_cmd(0x8D);
    gc9a01_write_byte(0x01);
    
    gc9a01_write_cmd(0x8E);
    gc9a01_write_byte(0xFF);
    
    gc9a01_write_cmd(0x8F);
    gc9a01_write_byte(0xFF);
    
    
    gc9a01_write_cmd(0xB6);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x20); // used 0x00
    
    gc9a01_write_cmd(0x36);
		
    gc9a01_write_byte(0xC8);
    
    gc9a01_write_cmd(COLOR_MODE);
    gc9a01_write_byte(COLOR_MODE__18_BIT);
    
    gc9a01_write_cmd(0x90);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x08);
    
    gc9a01_write_cmd(0xBD);
    gc9a01_write_byte(0x06);
    
    gc9a01_write_cmd(0xBC);
    gc9a01_write_byte(0x00);
    
    gc9a01_write_cmd(0xFF);
    gc9a01_write_byte(0x60);
    gc9a01_write_byte(0x01);
    gc9a01_write_byte(0x04);
    
    gc9a01_write_cmd(0xC3);
    gc9a01_write_byte(0x13);
    gc9a01_write_cmd(0xC4);
    gc9a01_write_byte(0x13);
    
    gc9a01_write_cmd(0xC9);
    gc9a01_write_byte(0x22);
    
    gc9a01_write_cmd(0xBE);
    gc9a01_write_byte(0x11);
    
    gc9a01_write_cmd(0xE1);
    gc9a01_write_byte(0x10);
    gc9a01_write_byte(0x0E);
    
    gc9a01_write_cmd(0xDF);
    gc9a01_write_byte(0x21);
    gc9a01_write_byte(0x0c);
    gc9a01_write_byte(0x02);
    
    gc9a01_write_cmd(0xF0);
    gc9a01_write_byte(0x45);
    gc9a01_write_byte(0x09);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x26);
    gc9a01_write_byte(0x2A);
    
    gc9a01_write_cmd(0xF1);
    gc9a01_write_byte(0x43);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x72);
    gc9a01_write_byte(0x36);
    gc9a01_write_byte(0x37);
    gc9a01_write_byte(0x6F);
    
    gc9a01_write_cmd(0xF2);
    gc9a01_write_byte(0x45);
    gc9a01_write_byte(0x09);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x26);
    gc9a01_write_byte(0x2A);
    
    gc9a01_write_cmd(0xF3);
    gc9a01_write_byte(0x43);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x72);
    gc9a01_write_byte(0x36);
    gc9a01_write_byte(0x37);
    gc9a01_write_byte(0x6F);
    
    gc9a01_write_cmd(0xED);
    gc9a01_write_byte(0x1B);
    gc9a01_write_byte(0x0B);
    
    gc9a01_write_cmd(0xAE);
    gc9a01_write_byte(0x77);
    
    gc9a01_write_cmd(0xCD);
    gc9a01_write_byte(0x63);
    
    gc9a01_write_cmd(0x70);
    gc9a01_write_byte(0x07);
    gc9a01_write_byte(0x07);
    gc9a01_write_byte(0x04);
    gc9a01_write_byte(0x0E);
    gc9a01_write_byte(0x0F);
    gc9a01_write_byte(0x09);
    gc9a01_write_byte(0x07);
    gc9a01_write_byte(0x08);
    gc9a01_write_byte(0x03);
    
    gc9a01_write_cmd(0xE8);
    gc9a01_write_byte(0x34);
    
    gc9a01_write_cmd(0x62);
    gc9a01_write_byte(0x18);
    gc9a01_write_byte(0x0D);
    gc9a01_write_byte(0x71);
    gc9a01_write_byte(0xED);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x18);
    gc9a01_write_byte(0x0F);
    gc9a01_write_byte(0x71);
    gc9a01_write_byte(0xEF);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x70);
    
    gc9a01_write_cmd(0x63);
    gc9a01_write_byte(0x18);
    gc9a01_write_byte(0x11);
    gc9a01_write_byte(0x71);
    gc9a01_write_byte(0xF1);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x18);
    gc9a01_write_byte(0x13);
    gc9a01_write_byte(0x71);
    gc9a01_write_byte(0xF3);
    gc9a01_write_byte(0x70);
    gc9a01_write_byte(0x70);
    
    gc9a01_write_cmd(0x64);
    gc9a01_write_byte(0x28);
    gc9a01_write_byte(0x29);
    gc9a01_write_byte(0xF1);
    gc9a01_write_byte(0x01);
    gc9a01_write_byte(0xF1);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x07);
    
    gc9a01_write_cmd(0x66);
    gc9a01_write_byte(0x3C);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0xCD);
    gc9a01_write_byte(0x67);
    gc9a01_write_byte(0x45);
    gc9a01_write_byte(0x45);
    gc9a01_write_byte(0x10);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x00);
    
    gc9a01_write_cmd(0x67);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x3C);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x01);
    gc9a01_write_byte(0x54);
    gc9a01_write_byte(0x10);
    gc9a01_write_byte(0x32);
    gc9a01_write_byte(0x98);
    
    gc9a01_write_cmd(0x74);
    gc9a01_write_byte(0x10);
    gc9a01_write_byte(0x85);
    gc9a01_write_byte(0x80);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x00);
    gc9a01_write_byte(0x4E);
    gc9a01_write_byte(0x00);
    
    gc9a01_write_cmd(0x98);
    gc9a01_write_byte(0x3e);
    gc9a01_write_byte(0x07);
    
    gc9a01_write_cmd(0x35);
    gc9a01_write_cmd(0x21);
    
    gc9a01_write_cmd(0x11);
    nrf_delay_ms(120);
    gc9a01_write_cmd(0x29);
    nrf_delay_ms(20);
    
}