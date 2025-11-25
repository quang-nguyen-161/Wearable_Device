#include "max30102.h"
#include "stdbool.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf_drv_twi.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"

#include "nrf_delay.h"
#include "spo2_algorithm.h"

#define TWI_INSTANCE_ID	0
const nrf_drv_twi_t m_twi = NRF_DRV_TWI_INSTANCE(TWI_INSTANCE_ID);
extern volatile bool m_xfer_done; 
max30102_t max30102;

#define RATE_SIZE 4

uint8_t rates[RATE_SIZE];

uint8_t rateSpot = 0;
uint64_t lastBeat = 0; //Time at which the last beat occurred

float beatsPerMinute;
int beatAvg;

uint32_t irBuffer[100]; //infrared LED sensor data
uint32_t redBuffer[100];  //red LED sensor data
int32_t bufferLength = 100; //data length
int32_t spo2; //SPO2 value
int8_t validSPO2; //indicator to show if the SPO2 calculation is valid
int32_t heartRate; //heart rate value
int8_t validHeartRate; //indicator to show if the heart rate calculation is valid

uint8_t cnt = 0;

void max30102_write(uint8_t register_address, uint8_t value)
{
    ret_code_t err_code;
    uint8_t tx_buff[MAX30102_ADDR_LEN+1];
	
    //Write the register address and data into transmit buffer
    tx_buff[0] = register_address;
    tx_buff[1] = value;

    //Set the flag to false to show the transmission is not yet completed
    m_xfer_done = false;
    
    //Transmit the data over TWI Bus
    err_code = nrf_drv_twi_tx(&m_twi, MAX30102_I2C_ADDR, tx_buff, MAX30102_ADDR_LEN + 1, false);
	APP_ERROR_CHECK(err_code);
    
    //Wait until the transmission of the data is finished
    while (m_xfer_done == false);
}

void max30102_read(uint8_t register_address, uint8_t * destination, uint8_t number_of_bytes)
{
    ret_code_t err_code;

    //Set the flag to false to show the receiving is not yet completed
    m_xfer_done = false;
    
    // Send the Register address where we want to write the data
    err_code = nrf_drv_twi_tx(&m_twi, MAX30102_I2C_ADDR, &register_address, 1, true);
	APP_ERROR_CHECK(err_code);
	  
    //Wait for the transmission to get completed
    while (m_xfer_done == false){}

    //set the flag again so that we can read data from the MPU6050's internal register
    m_xfer_done = false;
	  
    // Receive the data from the MPU6050
    err_code = nrf_drv_twi_rx(&m_twi, MAX30102_I2C_ADDR, destination, number_of_bytes);
	APP_ERROR_CHECK(err_code);
		
    //wait until the transmission is completed
    while (m_xfer_done == false)
	{
		
	}
}

void max30102_reset()
{
	max30102_write(MAX30102_MODE_CONFIG, 0x40);
}

void max30102_turnon()
{
	uint8_t config;
	max30102_read(MAX30102_MODE_CONFIG, &config, 1);
	config &= ~0x80;
	max30102_write(MAX30102_MODE_CONFIG, config);
}

void max30102_turnoff()
{
	uint8_t config;
	max30102_read(MAX30102_MODE_CONFIG, &config, 1);
	config |= 0x80;
	max30102_write(MAX30102_MODE_CONFIG, config);
}

void max30102_clear_fifo()
{
	max30102_write(MAX30102_FIFO_WR_PTR, 0x00);
	max30102_write(MAX30102_FIFO_RD_PTR, 0x00);
	max30102_write(MAX30102_OVF_COUNTER, 0x00);
}

void max30102_set_led_pulse_width(max30102_led_pw_t pw)
{
	uint8_t config;
	max30102_read(MAX30102_SPO2_CONFIG, &config, 1);
	
	config = (config & 0x7c) | (pw << MAX30102_SPO2_LEW_PW);
	max30102_write(MAX30102_SPO2_CONFIG, config);
}

void max30102_set_fifo_config(max30102_smp_ave_t smp_ave, uint8_t roll_over_en, uint8_t fifo_a_full)
{
	uint8_t config = 0x00;
	config |= smp_ave << MAX30102_FIFO_CONFIG_SMP_AVE;
    config |= ((roll_over_en & 0x01) << MAX30102_FIFO_CONFIG_ROLL_OVER_EN);
    config |= ((fifo_a_full & 0x0f) << MAX30102_FIFO_CONFIG_FIFO_A_FULL);
	
	max30102_write(MAX30102_FIFO_CONFIG, config);
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

void max30102_set_mode(max30102_mode_t mode)
{
    uint8_t config;
	max30102_read(MAX30102_MODE_CONFIG, &config, 1);
	
    config = (config & 0xf8) | mode;
    max30102_write(MAX30102_MODE_CONFIG, config);
	
    max30102_clear_fifo();
}

void max30102_set_a_full(uint8_t enable)
{
    uint8_t reg = 0;
	max30102_read(MAX30102_INTERRUPT_ENABLE_1, &reg, 1);
	
    reg &= ~(0x01 << MAX30102_INTERRUPT_A_FULL);
    reg |= ((enable & 0x01) << MAX30102_INTERRUPT_A_FULL);
	
    max30102_write(MAX30102_INTERRUPT_ENABLE_1, reg);
}

void max30102_set_die_temp_en(uint8_t enable)
{
    uint8_t reg = (enable & 0x01) << MAX30102_DIE_TEMP_EN;
	max30102_write(MAX30102_DIE_TEMP_CONFIG, reg);
}

void max30102_set_die_temp_rdy(uint8_t enable)
{
    uint8_t reg = (enable & 0x01) << MAX30102_INTERRUPT_DIE_TEMP_RDY;
    max30102_write(MAX30102_INTERRUPT_ENABLE_2, reg);
}

void max30102_plot(uint32_t ir_sample, uint32_t red_sample, uint32_t time)
{
    // printf("ir:%u\n", ir_sample);                  // Print IR only
    // printf("r:%u\n", red_sample);                  // Print Red only
    NRF_LOG_INFO("ir:%u,r:%u,t:%d", ir_sample, red_sample, time);    // Print IR and Red
	NRF_LOG_FLUSH();
}

uint32_t sum = 0;

void avg_buffer()
{
	sum = 0;
	for (uint8_t i = 0; i < 100; i++)
	{
		sum += irBuffer[i];
	}
	sum /= 100;
}

float heart_rate;

uint32_t read_count = 0;

void max30102_get(max30102_t *obj)
{
    // First transaction: Get the FIFO_WR_PTR
    uint8_t wr_ptr = 0, rd_ptr = 0;
    max30102_read(MAX30102_FIFO_WR_PTR, &wr_ptr, 1);
    max30102_read(MAX30102_FIFO_RD_PTR, &rd_ptr, 1);

    int8_t num_samples;

    num_samples = (int8_t)wr_ptr - (int8_t)rd_ptr;
    if (num_samples < 1)
    {
        num_samples += 32;
    }

    // Second transaction: Read NUM_SAMPLES_TO_READ samples from the FIFO
    for (int8_t i = 0; i < num_samples; i++)
    {
		//if (read_count < 100)
		{
			uint8_t sample[6];
			max30102_read(MAX30102_FIFO_DATA, sample, 6);
			uint32_t ir_sample = ((uint32_t)(sample[0] << 16) | (uint32_t)(sample[1] << 8) | (uint32_t)(sample[2])) & 0x3ffff;
			uint32_t red_sample = ((uint32_t)(sample[3] << 16) | (uint32_t)(sample[4] << 8) | (uint32_t)(sample[5])) & 0x3ffff;
			obj->_ir_samples[i] = ir_sample;
			obj->_red_samples[i] = red_sample;
			//aun_ir_buffer[read_count] = ir_sample;
			//aun_red_buffer[read_count] = red_sample;
			max30102_plot(ir_sample, red_sample, 0);
			//read_count++;
		}
	}
	
	read_count += num_samples;
}
/*
void max30102_read_fifo(max30102_t *obj)
{
    // First transaction: Get the FIFO_WR_PTR
    uint8_t wr_ptr = 0, rd_ptr = 0;
    max30102_read(MAX30102_FIFO_WR_PTR, &wr_ptr, 1);
    max30102_read(MAX30102_FIFO_RD_PTR, &rd_ptr, 1);

    int8_t num_samples;

    num_samples = (int8_t)wr_ptr - (int8_t)rd_ptr;
    if (num_samples < 1)
    {
        num_samples += 32;
    }

    // Second transaction: Read NUM_SAMPLES_TO_READ samples from the FIFO
    for (int8_t i = 0; i < num_samples; i++)
    {
        uint8_t sample[6];
        max30102_read(MAX30102_FIFO_DATA, sample, 6);
        uint32_t ir_sample = ((uint32_t)(sample[0] << 16) | (uint32_t)(sample[1] << 8) | (uint32_t)(sample[2])) & 0x3ffff;
        uint32_t red_sample = ((uint32_t)(sample[3] << 16) | (uint32_t)(sample[4] << 8) | (uint32_t)(sample[5])) & 0x3ffff;
        obj->_ir_samples[i] = ir_sample;
        obj->_red_samples[i] = red_sample;
        //max30102_plot(ir_sample, red_sample);

        if (cnt < 100)
        {
            irBuffer[cnt] = ir_sample;
            redBuffer[cnt] = red_sample;
			validHeartRate = 0;
			validSPO2 = 0;
            cnt++;
        }
		
		avg_buffer();
		
		if (cnt >= 100 && sum > 5000)
		{
			maxim_heart_rate_and_oxygen_saturation(irBuffer, bufferLength, redBuffer,(float*) &spo2, &validSPO2, &heartRate, &validHeartRate);
			if (validSPO2)
			{
				NRF_LOG_INFO("SPO2: %d", spo2);
			}
			else
			{
				NRF_LOG_INFO("SPO2 invalid");
			}
			NRF_LOG_FLUSH();
		
			if (validHeartRate)
			{
				NRF_LOG_INFO("HR: %d", heartRate);
			}
			else
			{
				NRF_LOG_INFO("HR invalid");
			}
			NRF_LOG_FLUSH();
		}
    }
}
*/
void max30102_read_1st_fifo(max30102_t *obj)
{
    // First transaction: Get the FIFO_WR_PTR
    uint8_t wr_ptr = 0, rd_ptr = 0;
    max30102_read(MAX30102_FIFO_WR_PTR, &wr_ptr, 1);
    max30102_read(MAX30102_FIFO_RD_PTR, &rd_ptr, 1);

    int8_t num_samples;

    num_samples = (int8_t)wr_ptr - (int8_t)rd_ptr;
    if (num_samples < 1)
    {
        num_samples += 32;
    }

    // Second transaction: Read NUM_SAMPLES_TO_READ samples from the FIFO
    for (int8_t i = 0; i < num_samples; i++)
    {
        uint8_t sample[6];
        max30102_read(MAX30102_FIFO_DATA, sample, 6);
        uint32_t ir_sample = ((uint32_t)(sample[0] << 16) | (uint32_t)(sample[1] << 8) | (uint32_t)(sample[2])) & 0x3ffff;
        uint32_t red_sample = ((uint32_t)(sample[3] << 16) | (uint32_t)(sample[4] << 8) | (uint32_t)(sample[5])) & 0x3ffff;
        obj->_ir_samples[i] = ir_sample;
        obj->_red_samples[i] = red_sample;
        //max30102_plot(ir_sample, red_sample);

        if (cnt < 100)
        {
            irBuffer[cnt] = ir_sample;
            redBuffer[cnt] = red_sample;
            cnt++;
        }
    }

    if (cnt >= 100)
    {
    	maxim_heart_rate_and_oxygen_saturation(irBuffer, bufferLength, redBuffer,(float*) &spo2, &validSPO2, &heartRate, &validHeartRate);
    }
}

void Max_read_fifo_sample(uint32_t *ir, uint32_t *red)
{
    uint32_t temp32 = 0;   // Luu gi? tr? m?u du?c d?c t? FIFO
    uint8_t temp[6] = {0}; // M?ng luu tr? 6 byte d? li?u m?u
    ret_code_t err_code = NRF_SUCCESS;    

    // ??c 6 byte d? li?u m?u t? FIFO
    max30102_read(MAX30102_FIFO_DATA, temp, 6);

    // Chuy?n d?i 3 byte d? li?u IR sang d?ng s? nguy?n 32 bit
    temp32 = ((uint32_t)temp[0] << 16) | ((uint32_t)temp[1] << 8) | temp[2];
    *ir = temp32;

    // Chuy?n d?i 3 byte d? li?u Red sang d?ng s? nguy?n 32 bit
    temp32 = 0;
    temp32 = ((uint32_t)temp[3] << 16) | ((uint32_t)temp[4] << 8) | temp[5];
    *red = temp32;
}

uint8_t  Max_num_available_data(void)
{
    int8_t number_samples = max30102.head - max30102.tail;

    if (number_samples < 0)
    {
        number_samples += STORAGE_SIZE;        
    }

    return number_samples;
}

uint32_t Max_get_red_signal(void)
{
    return  max30102._red_samples[max30102.tail];
}

uint32_t Max_get_ir_signal(void)
{
    return  max30102._ir_samples[max30102.tail];    
}

void Max_next_sample(void)
{
	if(Max_num_available_data() != 0) 
	{
		max30102.tail++;
		max30102.tail %= STORAGE_SIZE;
	}    
}

uint16_t Max_check_available_data(void)
{
    uint8_t read_pointer = 0;
    uint8_t write_pointer = 0;
    int16_t number_of_samples = 0;
    int16_t bytes_left_to_read = 0;
    uint8_t reg = 0;
    ret_code_t err_code = NRF_SUCCESS;

    // L?y con tr? d?c v? ghi t? c?c thanh ghi tuong ?ng
    max30102_read(MAX30102_FIFO_RD_PTR, &read_pointer, 1);
	max30102_read(MAX30102_FIFO_WR_PTR, &write_pointer, 1);

    // N?u FIFO kh?ng r?ng
    if (read_pointer != write_pointer) 
    {
        // T?nh s? lu?ng m?u d? li?u c? s?n trong FIFO
        number_of_samples = write_pointer - read_pointer;
        if (number_of_samples < 0)
        {
            number_of_samples += 32;          
        }

        // M?i m?u d? li?u g?m 6 byte (3 byte cho IR v? 3 byte cho RED)
        bytes_left_to_read = number_of_samples * 6;

        // G?i d?a ch? b? d?m d? li?u
        //reg = MAX30102_FIFO_DATA;
        //err_code = nrf_drv_twi_tx(&m_twi, MAX30102_I2C_ADDR, &reg, 1, true);
        //APP_ERROR_CHECK(err_code);

        // ??c d? li?u t? FIFO v? luu tr? v?o b? d?m d? li?u
        bytes_left_to_read = (bytes_left_to_read <= 32) ? (bytes_left_to_read) : (32);
        while (bytes_left_to_read > 0) 
        {
            // Tang v? tr? d?u c?a c?u tr?c luu tr?
            max30102.head++;
            max30102.head %= STORAGE_SIZE;

            // ??c m?u d? li?u t? FIFO
            //max30102_read_fifo(&max30102);
			Max_read_fifo_sample(&max30102._ir_samples[max30102.head], &max30102._red_samples[max30102.head]);
            bytes_left_to_read -= 6;
        }
    }

    // Tr? v? s? lu?ng m?u d? li?u c? s?n trong FIFO
    return (number_of_samples);    
}

void max30102_setup()
{
	max30102_reset();
	max30102_clear_fifo();

	max30102_set_fifo_config(max30102_smp_ave_4, 1, 17);
	max30102_set_led_pulse_width(max30102_pw_18_bit);
	max30102_set_adc_resolution(max30102_adc_4096);
	max30102_set_sampling_rate(max30102_sr_400);
	
	max30102_set_led_current_1(6.2);
	max30102_set_led_current_2(6.2);
	
	max30102_set_mode(max30102_spo2);
	max30102_set_a_full(1);
	max30102_set_die_temp_en(1);
	max30102_set_die_temp_rdy(1);
	
	uint8_t en_reg[2] = {0};
	max30102_read(0x00, en_reg, 1);
}

void max30102_wakeup()
{
	max30102_write(MAX30102_MODE_CONFIG, 0x40);
	nrf_delay_ms(500);
	
	max30102_write(MAX30102_FIFO_RD_PTR, 0x00);
	max30102_write(MAX30102_FIFO_WR_PTR, 0x00);
	max30102_write(MAX30102_OVF_COUNTER, 0x00);
	
	max30102_write(MAX30102_FIFO_CONFIG, 0xAF);
	
	max30102_write(MAX30102_MODE_CONFIG, 0x03);
	
	max30102_write(MAX30102_SPO2_CONFIG, 0x47);
	
	max30102_write(MAX30102_LED_IR_PA1, 0x02);
	max30102_write(MAX30102_LED_RED_PA2, 0x02);
	
	max30102_write(0x10, 0x1F);
}


//====================================

#define BUFF_SIZE 50
#define FILTER_LEVEL 8
SAMPLE sampleBuff[BUFF_SIZE];

uint8_t HR = 0;
uint8_t SPO2 = 0;

uint16_t redAC = 0;
uint32_t redDC = 0;
uint16_t iRedAC = 0;
uint32_t iRedDC = 0;

uint8_t max30102_getUnreadSampleCount()
{
    uint8_t wr = 0, rd = 0;
	max30102_read(MAX30102_FIFO_WR_PTR, &wr, 1);
	max30102_read(MAX30102_FIFO_RD_PTR, &rd, 1);

    if ((wr - rd) < 0)
        return wr - rd + 32;
    else
        return wr - rd;
}

void max30102_getFIFO(SAMPLE *data, uint8_t sampleCount)
{
    uint8_t dataTemp[6];
    if (sampleCount > 5)
        sampleCount = 5;
	
    uint8_t i;
    for (i = 0; i < sampleCount; i++)
    {
		max30102_read(MAX30102_FIFO_DATA, dataTemp, 6);
        data[i].red = (((uint32_t)dataTemp[0]) << 16 | ((uint32_t)dataTemp[1]) << 8 | dataTemp[2]) & 0x3ffff;
        data[i].iRed = (((uint32_t)dataTemp[3]) << 16 | ((uint32_t)dataTemp[4]) << 8 | dataTemp[5]) & 0x3ffff;
    }
}

void filter(SAMPLE *s)
{
    uint8_t i;
    uint32_t red = 0;
    uint32_t ired = 0;
    for (i = 0; i < FILTER_LEVEL - 1; i++)
    {
        red += sampleBuff[i].red;
        ired += sampleBuff[i].iRed;
    }
    s->red = (red + s->red) / FILTER_LEVEL;
    s->iRed = (ired + s->iRed) / FILTER_LEVEL;
}

void buffInsert(SAMPLE s)
{
    uint8_t i;
    for (i = BUFF_SIZE - 1; i > 0; i--)
    {
        sampleBuff[i].red = sampleBuff[i - 1].red;
        sampleBuff[i].iRed = sampleBuff[i - 1].iRed;
    }
    sampleBuff[0].red = s.red;
    sampleBuff[0].iRed = s.iRed;
}

void calAcDc(uint16_t *rac, uint32_t *rdc, uint16_t *iac, uint32_t *idc)
{
    uint32_t rMax = sampleBuff[0].red;
    uint32_t rMin = sampleBuff[0].red;
    uint32_t iMax = sampleBuff[0].iRed;
    uint32_t iMin = sampleBuff[0].iRed;

    uint8_t i;
    for (i = 0; i < BUFF_SIZE; i++)
    {
        if (sampleBuff[i].red > rMax)
            rMax = sampleBuff[i].red;
        if (sampleBuff[i].red < rMin)
            rMin = sampleBuff[i].red;
        if (sampleBuff[i].iRed > iMax)
            iMax = sampleBuff[i].iRed;
        if (sampleBuff[i].iRed < iMin)
            iMin = sampleBuff[i].iRed;
    }
    *rac = rMax - rMin;
    *rdc = (rMax + rMin) / 2;
    *iac = iMax - iMin;
    *idc = (iMax + iMin) / 2;
}

int16_t eachSampleDiff = 0;
SAMPLE sampleBuffTemp[5];
uint8_t unreadSampleCount = 0;

void max30102_cal()
{
    unreadSampleCount = max30102_getUnreadSampleCount();
    max30102_getFIFO(sampleBuffTemp, unreadSampleCount);
    static uint8_t eachBeatSampleCount = 0;   
    static uint8_t lastTenBeatSampleCount[10]; 
    static uint32_t last_iRed = 0;             
    uint8_t i, ii;
    for (i = 0; i < unreadSampleCount; i++)
    {
        if (sampleBuffTemp[i].iRed < 40000)
        {
            HR = 0;
            SPO2 = 0;
            eachSampleDiff = 0;
            continue;
        }
        buffInsert(sampleBuffTemp[i]);
        calAcDc(&redAC, &redDC, &iRedAC, &iRedDC);
        filter(&sampleBuffTemp[i]);
    
        float R = (((float)(redAC)) / ((float)(redDC))) / (((float)(iRedAC)) / ((float)(iRedDC)));
        if (R >= 0.36 && R < 0.66)
            SPO2 = (uint8_t)(107 - 20 * R);
        else if (R >= 0.66 && R < 1)
            SPO2 = (uint8_t)(129.64 - 54 * R);
   
        eachSampleDiff = last_iRed - sampleBuffTemp[i].iRed;
        if (eachSampleDiff > 50 && eachBeatSampleCount > 12)
        {
            for (ii = 9; ii > 0; ii--)
                lastTenBeatSampleCount[i] = lastTenBeatSampleCount[i - 1];
            lastTenBeatSampleCount[0] = eachBeatSampleCount;
            uint32_t totalTime = 0;
            for (ii = 0; ii < 10; ii++)
                totalTime += lastTenBeatSampleCount[i];
            HR = (uint8_t)(60.0 * 10 / 0.02 / ((float)totalTime));
            eachBeatSampleCount = 0;
        }
        last_iRed = sampleBuffTemp[i].iRed;
        eachBeatSampleCount++;
    }
}

uint8_t max30102_getHeartRate() { return HR; }
uint8_t max30102_getSpO2() { return SPO2; }
int16_t max30102_getDiff() { return eachSampleDiff; }

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
	max30102_set_sampling_rate(max30102_sr_50);
	max30102_set_led_pulse_width(max30102_pw_18_bit);
	max30102_set_led_current_1(2);
	max30102_set_led_current_2(2);

	NRF_LOG_INFO("max ok");
	NRF_LOG_FLUSH();
}
void max30102_read_fifo(uint32_t *pun_red_led, uint32_t *pun_ir_led, uint8_t idx)
{
	uint32_t un_temp = 0;
	uint8_t uch_temp;
	*pun_ir_led = 0;
	*pun_red_led = 0;
	uint8_t sample[6];

	max30102_read(MAX30102_INTERRUPT_STATUS_1, &uch_temp, 1);
	max30102_read(MAX30102_INTERRUPT_STATUS_2, &uch_temp, 1);

	max30102_read(MAX30102_FIFO_DATA, sample, 6);
	uint32_t ir_sample = ((uint32_t)(sample[0] << 16) | (uint32_t)(sample[1] << 8) | (uint32_t)(sample[2])) & 0x3ffff;
	uint32_t red_sample = ((uint32_t)(sample[3] << 16) | (uint32_t)(sample[4] << 8) | (uint32_t)(sample[5])) & 0x3ffff;
	
	pun_ir_led[idx] = ir_sample;
	pun_red_led[idx] = red_sample;
}
void max30102_get_hr_spo2()
{
	uint32_t peak_ir_buffer[100]={0};
uint8_t peak_ir_count, min_ir_count, peak_red_count, min_red_count;
float slope = 0;
float AC_ir, DC_ir, AC_red, DC_red;
	typedef struct
{
	float x;
	float y;
} point_t;

point_t IR[100] = {0};
point_t RED[100] = {0};
uint8_t ir_peak, red_peak;

uint32_t count = 0;
uint32_t aun_ir_buffer[100]; //infrared LED sensor data
uint32_t aun_red_buffer[100];  //red LED sensor data

	max30102_turnon();
			AC_ir = 0; DC_ir = 0; DC_red = 0; AC_red = 0;
			peak_ir_count = 0; min_ir_count = 0; peak_red_count = 0; min_red_count = 0;

			ir_peak = 0;
			red_peak = 0;
			

			for (int i = 0; i < 99; i++)
			{
				aun_ir_buffer[i] = aun_ir_buffer[i+1];
				aun_red_buffer[i] = aun_red_buffer[i+1];
			}

			//while(nrf_gpio_pin_read(MAX_INT_PIN) == 1);
                        nrf_delay_ms(20);
			max30102_read_fifo(aun_ir_buffer, aun_red_buffer, 99); 
			for (int i = 0; i < 100; i++)
			{
				peak_ir_buffer[i] = 0;
				RED[i].x = 0; 
				RED[i].y = 0;
				IR[i].x = 0;
				IR[i].y = 0;
			}
	
			for (int i = 3; i < 97; i++)
			{
				if (aun_ir_buffer[i] > aun_ir_buffer[i+1] &&
					aun_ir_buffer[i] > aun_ir_buffer[i+2] &&
					aun_ir_buffer[i] > aun_ir_buffer[i+3] &&
					aun_ir_buffer[i] > aun_ir_buffer[i-1] &&
					aun_ir_buffer[i] > aun_ir_buffer[i-2] &&
					aun_ir_buffer[i] > aun_ir_buffer[i-3] )
				{
					peak_ir_buffer[peak_ir_count] = i;
					peak_ir_count++;

					IR[ir_peak].x = i;
					IR[ir_peak].y = aun_ir_buffer[i];
					ir_peak++;
				}
		
				else if (aun_ir_buffer[i] < aun_ir_buffer[i+1] &&
					aun_ir_buffer[i] < aun_ir_buffer[i+2] &&
					aun_ir_buffer[i] < aun_ir_buffer[i+3] &&
					aun_ir_buffer[i] < aun_ir_buffer[i-1] &&
					aun_ir_buffer[i] < aun_ir_buffer[i-2] &&
					aun_ir_buffer[i] < aun_ir_buffer[i-3] ) 
				{
					min_ir_count++;

					IR[ir_peak].x = i;
					IR[ir_peak].y = aun_ir_buffer[i];
					ir_peak++;
				}
		
				if (aun_red_buffer[i] > aun_red_buffer[i+1] &&
					aun_red_buffer[i] > aun_red_buffer[i+2] &&
					aun_red_buffer[i] > aun_red_buffer[i+3] &&
					aun_red_buffer[i] > aun_red_buffer[i-1] &&
					aun_red_buffer[i] > aun_red_buffer[i-2] &&
					aun_red_buffer[i] > aun_red_buffer[i-3] )
				{
					RED[red_peak].x = i;
					RED[red_peak].y = aun_red_buffer[i];
					red_peak++;
				}
		
				else if (aun_red_buffer[i] < aun_red_buffer[i+1] &&
					aun_red_buffer[i] < aun_red_buffer[i+2] &&
					aun_red_buffer[i] < aun_red_buffer[i+3] &&
					aun_red_buffer[i] < aun_red_buffer[i-1] &&
					aun_red_buffer[i] < aun_red_buffer[i-2] &&
					aun_red_buffer[i] < aun_red_buffer[i-3] )
				{
					RED[red_peak].x = i;
					RED[red_peak].y = aun_red_buffer[i];
					red_peak++;
				}
			}
	
			int i = 2; int idx = 0; float m;

			while (i < ir_peak - 1 && i < red_peak - 1)
			{
				if (IR[i].y < IR[i+1].y && IR[i+1].y > IR[i+2].y && RED[i].y < RED[i+1].y && RED[i+1].y > RED[i+2].y)
				{
					m = (IR[i+2].y - IR[i].y) / (IR[i+2].x - IR[i].x);
					DC_ir = m * (IR[i+1].x - IR[i].x) + IR[i].y;
					AC_ir = IR[i+1].y - DC_ir;
			
					m = (RED[i+2].y - RED[i].y) / (RED[i+2].x - RED[i].x);
					DC_red = m * (RED[i+1].x - RED[i].x) + RED[i].y;
					AC_red = RED[i+1].y - DC_red;
			
					slope = (AC_red/DC_red) / (AC_ir/DC_ir);
			
					idx++;
				}
		
				i++;
			}
		
			if (slope <= 2.5 && slope >= 0.8)
				slope = (slope - 0.8)/(2.5 - 0.8)* (0.294118-0.241176) + 0.241176;
			else if (slope < 0.8 && slope >= 0)
				slope = slope / 0.8 * (0.235294 - 0.182353) + 0.182353;
			else if (slope > 2.5 && slope <= 10)
				slope = (slope - 2.5) / (10 - 2.5) * (0.470588 - 0.3) + 0.3;
			else if (slope > 10)
				slope = 0.529;
			else slope = 0.24;
			int spo2_chi;
			int hr_chi;
			spo2_chi = 104 - 17 * slope;
		
			if (spo2_chi > 100) spo2_chi = 99;
		
		//	temp = tmp117_get_Temp() + TEMP_OFFSET;

			hr_chi = (60*(float)(peak_ir_count-1))/((float)(peak_ir_buffer[peak_ir_count-1] - peak_ir_buffer[0]) * 0.02);
		
			if (aun_ir_buffer[99] < 15000) 
			{
				spo2_chi = 0;
				hr_chi = 0;
			}
			NRF_LOG_INFO("IR, %d , RED , %d , hr , %d , spo2 , %d ,",aun_ir_buffer[99],aun_red_buffer[99],hr_chi,spo2_chi);
           
		NRF_LOG_FLUSH();
}

