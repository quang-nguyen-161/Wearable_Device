#include "tmp117_driver.h"

uint16_t tmp117_read_register(uint8_t reg)
{
	uint8_t rx_buff[2];
	twim_txrx(NRF_TWIM0,TMP117_GND_ADDR,&reg,1,rx_buff,2);
	
	return (uint16_t)(rx_buff[0] << 8 | rx_buff[1]);
}

void tmp117_write_register(uint8_t reg, uint8_t first, uint8_t second)
{
	uint8_t tx_buff[3] = {reg, first,second};
	
	twim_tx(NRF_TWIM0,TMP117_GND_ADDR,tx_buff,3);
}

void tmp117_set_config(uint8_t first, uint8_t second)
{
	tmp117_write_register(TMP117_ConfigReg, first, second);
}

void tmp117_set_temp_offset(uint8_t first, uint8_t second)
{
	tmp117_write_register(TMP117_Temp_Offset, first, second);
}

void tmp117_set_low_limit(uint8_t first, uint8_t second)
{
	tmp117_write_register(TMP117_TempLowLimit, first, second);
}

void tmp117_set_high_limit(uint8_t first, uint8_t second)
{
	tmp117_write_register(TMP117_TempHighLimit, first, second);
}

bool tmp117_init(void)
{
        uint16_t device_id = tmp117_read_register(TMP117_ID_Reg);
        if (device_id != TMP117_DEVICE_ID) return false;
    
		//continuous conversion, 15.5ms cycle, 8 avg sample
    tmp117_set_config(0x02, 0x20);
		
		//no offset
    tmp117_set_temp_offset(0x00, 0x00);
		nrf_delay_ms(100);
		
    return true;
}

void tmp117_shutdown_mode(void)
{
		// 
    tmp117_write_register(TMP117_ConfigReg, 0x01, 0x00);
}

void tmp117_continuous_mode(void)
{
    tmp117_write_register(TMP117_ConfigReg, 0x00, 0x00);
}

uint16_t tmp117_get_config(void)
{
    return tmp117_read_register(TMP117_ConfigReg);
}

void tmp117_set_averaging(TMP117_AVE ave)
{
    uint16_t reg_value = tmp117_get_config();

    reg_value &= ~((1UL << 6) | (1UL << 5));
    reg_value |= ((ave & 0x03) << 5);

    uint8_t first = (uint8_t)(reg_value >> 8);
    uint8_t second = (uint8_t)(reg_value & 0xFF);
    tmp117_set_config(first, second);
}

float tmp117_get_temp(void)
{
    uint16_t raw = tmp117_read_register(TMP117_TempReg);
	
    float temp = TMP117_RESOLUTION * (int16_t)raw;

    return temp;
}

void tmp117_wake_oneshot(void)
{
    uint16_t cfg = tmp117_get_config();

		// change to wake oneshot mode
    cfg &= ~(0x03 << 8);
    cfg |= (0x03 << 8);

    tmp117_set_config((uint8_t)(cfg >> 8), (uint8_t)(cfg & 0xFF));
}

