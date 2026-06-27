#include "adc_driver.h"

void ppi_init(NRF_TIMER_Type *p_timer, NRF_SAADC_Type *p_saadc)
{
    //wire event end-point as timer compare & task end-point as saadc sample
    NRF_PPI->CH[0].EEP = (uint32_t)&p_timer->EVENTS_COMPARE[0];
    NRF_PPI->CH[0].TEP = (uint32_t)&p_saadc->TASKS_SAMPLE;
    //enable ppi channel 0
    NRF_PPI->CHENSET = PPI_CHENSET_CH0_Msk;
}

void saadc_init(NRF_SAADC_Type* p_reg, IRQn_Type irq, uint8_t channel)
{
	//disable before config
	p_reg->ENABLE = SAADC_ENABLE_ENABLE_Disabled;
	
	//channel 0 positive convert
	p_reg->CH[channel].PSELP = SAADC_CH_PSELP_PSELP_AnalogInput0 << SAADC_CH_PSELP_PSELP_Pos;
	p_reg->CH[channel].PSELN = SAADC_CH_PSELN_PSELN_NC;
	
	p_reg->CH[channel].CONFIG =
      (SAADC_CH_CONFIG_MODE_SE          << SAADC_CH_CONFIG_MODE_Pos) 		//single-ended
    | (SAADC_CH_CONFIG_BURST_Disabled   << SAADC_CH_CONFIG_BURST_Pos) 	//burst disable
    | (SAADC_CH_CONFIG_GAIN_Gain1_6     << SAADC_CH_CONFIG_GAIN_Pos)		//gain 1/6
    | (SAADC_CH_CONFIG_RESP_Bypass      << SAADC_CH_CONFIG_RESP_Pos)		//bypass pullup resistor
		| (SAADC_CH_CONFIG_RESN_Bypass      << SAADC_CH_CONFIG_RESN_Pos)    //bypass pulldown resistor
    | (SAADC_CH_CONFIG_REFSEL_Internal  << SAADC_CH_CONFIG_REFSEL_Pos)	//interval ref 0.6V
    | (SAADC_CH_CONFIG_TACQ_40us        << SAADC_CH_CONFIG_TACQ_Pos);		//acquistion time 40us
	
	//oversampling bypass
	p_reg->OVERSAMPLE = SAADC_OVERSAMPLE_OVERSAMPLE_Bypass;
	
	//14 bits resolution
	p_reg->RESOLUTION = SAADC_RESOLUTION_VAL_14bit; 
	
	// enable saadc interrupt
p_reg->INTENSET = SAADC_INTENSET_END_Msk | SAADC_INTENSET_STARTED_Msk;
	NVIC_SetPriority(irq, 6);
	NVIC_EnableIRQ(irq);

	//enable saadc
	p_reg->ENABLE = SAADC_ENABLE_ENABLE_Enabled;
	
}

void saadc_buffer_init(NRF_SAADC_Type *p_reg, int16_t *buffer, uint32_t len)
{
    p_reg->RESULT.PTR = (uint32_t)buffer;
    p_reg->RESULT.MAXCNT = len;
}

void saadc_start(NRF_SAADC_Type *p_reg, NRF_TIMER_Type *p_timer, int16_t *buffer)
{
    p_reg->EVENTS_STARTED = 0;
    p_reg->EVENTS_END     = 0;

    // initial pointing to buffer
    p_reg->RESULT.PTR    = (uint32_t)buffer;
    p_reg->RESULT.MAXCNT = 1;

    p_reg->TASKS_START = 1;
    while (!p_reg->EVENTS_STARTED); 
    p_reg->EVENTS_STARTED = 0;      

		// reset timer
    p_timer->TASKS_STOP  = 1;
    p_timer->TASKS_CLEAR = 1;
    p_timer->TASKS_START = 1;       
}