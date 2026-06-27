#include "adc_driver.h"

#define SAMPLES_IN_BUFFER 1
static int16_t adc_sample;
void saadc_init(void)
{
		//setup like default in nrfx_saadc.h
    //disable
    NRF_SAADC->ENABLE = 0;

    //resolution
    NRF_SAADC->RESOLUTION = SAADC_RESOLUTION_VAL_12bit;

    //oversample
    NRF_SAADC->OVERSAMPLE = SAADC_OVERSAMPLE_OVERSAMPLE_Bypass;

    //mode
    NRF_SAADC->CH[0].CONFIG |= 0;    
    NRF_SAADC->TASKS_STOP = 1;

    //enable interrupt (callback)
    NRF_SAADC->INTENCLR = 0xFFFFFFFF;
    NRF_SAADC->INTENSET = SAADC_INTENSET_END_Msk;

    NVIC_ClearPendingIRQ(SAADC_IRQn);
    NVIC_SetPriority(SAADC_IRQn, 6);
    NVIC_EnableIRQ(SAADC_IRQn);

    //enable
    NRF_SAADC->ENABLE = SAADC_ENABLE_ENABLE_Enabled;
}

void channel_init(void)
{
    //positive input ain0 == p0.2
    NRF_SAADC->CH[0].PSELP = SAADC_CH_PSELP_PSELP_AnalogInput0;

    //single end mode
    NRF_SAADC->CH[0].PSELN = SAADC_CH_PSELN_PSELN_NC;

    //channel default config as example in nrfx_saadc.h
    NRF_SAADC->CH[0].CONFIG =
          (SAADC_CH_CONFIG_RESP_Bypass     << SAADC_CH_CONFIG_RESP_Pos)
        | (SAADC_CH_CONFIG_RESN_Bypass     << SAADC_CH_CONFIG_RESN_Pos)
        | (SAADC_CH_CONFIG_GAIN_Gain1_6    << SAADC_CH_CONFIG_GAIN_Pos)
        | (SAADC_CH_CONFIG_REFSEL_Internal << SAADC_CH_CONFIG_REFSEL_Pos)
        | (SAADC_CH_CONFIG_TACQ_10us       << SAADC_CH_CONFIG_TACQ_Pos)
        | (SAADC_CH_CONFIG_MODE_SE         << SAADC_CH_CONFIG_MODE_Pos)
        | (SAADC_CH_CONFIG_BURST_Disabled  << SAADC_CH_CONFIG_BURST_Pos);
}

void buffer_init(void)
{
		// adc value return buffer
    NRF_SAADC->RESULT.PTR    = (uint32_t) &adc_sample;
		// number of samples in buffer
    NRF_SAADC->RESULT.MAXCNT = 1;
		// read only 1 adc value 
}

void adc_init()
{	
	//channel config
	channel_init();
	
	//adc config
  saadc_init();
	
	//sample in buffer config
	buffer_init();
}

void saadc_start(void)
{
    NRF_SAADC->EVENTS_STARTED = 0;
    NRF_SAADC->TASKS_START = 1;

    while (!NRF_SAADC->EVENTS_STARTED);
    NRF_SAADC->EVENTS_STARTED = 0;
}

void saadc_sample(void)
{
    NRF_SAADC->TASKS_SAMPLE = 1;
}
