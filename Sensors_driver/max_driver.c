#include "max_driver.h"
#include "nrf_delay.h"

void max30102_write(uint8_t register_address, uint8_t value)
{
	uint8_t tx_buff[2] = {register_address, value};
	twim_tx(NRF_TWIM0, MAX30102_I2C_ADDR, tx_buff, 2);
}

void max30102_read(uint8_t register_address, uint8_t *rx_buff, uint8_t rx_len)
{
		uint8_t tx_buff[1] = {register_address};
    twim_txrx(NRF_TWIM0, MAX30102_I2C_ADDR, tx_buff, 1, rx_buff, rx_len);
}

void max30102_clear_fifo()
{
	max30102_write(MAX30102_FIFO_WR_PTR, 0x00);
	max30102_write(MAX30102_FIFO_RD_PTR, 0x00);
	max30102_write(MAX30102_OVF_COUNTER, 0x00);
}

void max30102_set_fifo_config(max30102_smp_ave_t smp_ave, uint8_t roll_over_en, uint8_t fifo_a_full)
{
	uint8_t config = 0x00;
	config |= smp_ave << MAX30102_FIFO_CONFIG_SMP_AVE;
    config |= ((roll_over_en & 0x01) << MAX30102_FIFO_CONFIG_ROLL_OVER_EN);
    config |= ((fifo_a_full & 0x0f) << MAX30102_FIFO_CONFIG_FIFO_A_FULL);
	
	max30102_write(MAX30102_FIFO_CONFIG, config);
}

void max30102_set_mode(max30102_mode_t mode)
{
    uint8_t config;
	max30102_read(MAX30102_MODE_CONFIG, &config, 1);
	
    config = (config & 0xf8) | mode;
    max30102_write(MAX30102_MODE_CONFIG, config);
	
    max30102_clear_fifo();
}

void max30102_set_adc_resolution(max30102_adc_t adc)
{
    uint8_t config;
    max30102_read(MAX30102_SPO2_CONFIG, &config, 1);	
	
	config = (config & 0x1f) | (adc << MAX30102_SPO2_ADC_RGE);
    max30102_write(MAX30102_SPO2_CONFIG, config);
}

void max30102_set_sampling_rate(max30102_sr_t sr)
{
    uint8_t config;
    max30102_read(MAX30102_SPO2_CONFIG, &config, 1);
	
    config = (config & 0x63) << MAX30102_SPO2_SR;
    max30102_write(MAX30102_SPO2_CONFIG, config);	
}

void max30102_set_led_current_1(float ma)
{
	uint8_t pa = ma / 0.2;
    max30102_write(MAX30102_LED_IR_PA1, pa);
}

void max30102_set_led_current_2(float ma)
{
	uint8_t pa = ma / 0.2;
    max30102_write(MAX30102_LED_RED_PA2, pa);
}

void max30102_set_led_pulse_width(max30102_led_pw_t pw)
{
	uint8_t config;
	max30102_read(MAX30102_SPO2_CONFIG, &config, 1);
	
	config = (config & 0x7c) | (pw << MAX30102_SPO2_LEW_PW);
	max30102_write(MAX30102_SPO2_CONFIG, config);
}


void max30102_init()
{
	
	uint8_t uch_dummy;
	max30102_write(MAX30102_MODE_CONFIG,0x00);
	max30102_write(MAX30102_MODE_CONFIG, 0x40);
	nrf_delay_ms(1000);
	
	
	max30102_read(MAX30102_INTERRUPT_STATUS_1, &uch_dummy, 1);
	
	max30102_write(MAX30102_INTERRUPT_ENABLE_1, 0xc0); // INTR setting
  max30102_write(MAX30102_INTERRUPT_ENABLE_2, 0x00); // INTR setting
	
	max30102_write(MAX30102_FIFO_RD_PTR, 0x00);
	max30102_write(MAX30102_FIFO_WR_PTR, 0x00);
	max30102_write(MAX30102_OVF_COUNTER, 0x00);
	
	max30102_set_fifo_config(max30102_smp_ave_1, 0, 17);
	max30102_set_mode(max30102_spo2);
	max30102_set_adc_resolution(max30102_adc_2048);
	max30102_set_sampling_rate(max30102_sr_100);
	max30102_set_led_pulse_width(max30102_pw_18_bit);
	max30102_set_led_current_1(4);
	max30102_set_led_current_2(4);
}

void max30102_get_sample(uint32_t *ir, uint32_t *red)
{
    uint8_t uch_temp;
    uint8_t sample[6];

    max30102_read(MAX30102_INTERRUPT_STATUS_1, &uch_temp, 1);
    max30102_read(MAX30102_INTERRUPT_STATUS_2, &uch_temp, 1);

    max30102_read(MAX30102_FIFO_DATA, sample, 6);
    uint32_t ir_sample  = ((uint32_t)(sample[0] << 16) | (uint32_t)(sample[1] << 8) | (uint32_t)(sample[2])) & 0x3ffff;
    uint32_t red_sample = ((uint32_t)(sample[3] << 16) | (uint32_t)(sample[4] << 8) | (uint32_t)(sample[5])) & 0x3ffff;

    *ir  = ir_sample;
    *red = red_sample;
}

void ppg_process(uint32_t *ir_sample, uint32_t *red_sample, sensor_data_t *sensors)
{
}
