#include "adc_driver.h"

// saadc + ppi and timer on nRF52832, only using low level registers
// follow instruction on https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/saadc.html

#define SAMPLES_IN_BUFFER 1

static int16_t m_buf[2][SAMPLES_IN_BUFFER];
static uint8_t m_active = 0;

//saadc init function
void saadc_init(void)
{
		//disable before config
    NRF_SAADC->ENABLE = SAADC_ENABLE_ENABLE_Disabled;

    //channel 0, single-ended mode
    NRF_SAADC->CH[0].PSELP = SAADC_CH_PSELP_PSELP_AnalogInput0
                              << SAADC_CH_PSELP_PSELP_Pos;
    NRF_SAADC->CH[0].PSELN = SAADC_CH_PSELN_PSELN_NC;
		
		//channel 0 config
    NRF_SAADC->CH[0].CONFIG =
          (SAADC_CH_CONFIG_MODE_SE         << SAADC_CH_CONFIG_MODE_Pos)
        | (SAADC_CH_CONFIG_BURST_Disabled  << SAADC_CH_CONFIG_BURST_Pos)
        | (SAADC_CH_CONFIG_GAIN_Gain1_6    << SAADC_CH_CONFIG_GAIN_Pos)
        | (SAADC_CH_CONFIG_RESP_Bypass     << SAADC_CH_CONFIG_RESP_Pos)
        | (SAADC_CH_CONFIG_RESN_Bypass     << SAADC_CH_CONFIG_RESN_Pos)
        | (SAADC_CH_CONFIG_REFSEL_Internal << SAADC_CH_CONFIG_REFSEL_Pos)
        | (SAADC_CH_CONFIG_TACQ_40us       << SAADC_CH_CONFIG_TACQ_Pos);
		
		//14 bits resolution, no oversample
    NRF_SAADC->RESOLUTION = SAADC_RESOLUTION_VAL_14bit;
    NRF_SAADC->OVERSAMPLE = SAADC_OVERSAMPLE_OVERSAMPLE_Bypass;

    //2 1-sample buffers for conversion value
    m_active                  = 0;
    NRF_SAADC->RESULT.PTR    = (uint32_t)m_buf[0];
    NRF_SAADC->RESULT.MAXCNT = SAMPLES_IN_BUFFER;

    // end interrupt enable
    NRF_SAADC->INTENSET = SAADC_INTENSET_END_Msk;
    NVIC_SetPriority(SAADC_IRQn, 6);
    NVIC_EnableIRQ(SAADC_IRQn);
		
		//enable saadc
    NRF_SAADC->ENABLE = SAADC_ENABLE_ENABLE_Enabled;

    //offset calibration
    NRF_SAADC->EVENTS_CALIBRATEDONE  = 0;
    NRF_SAADC->TASKS_CALIBRATEOFFSET = 1;
    while (!NRF_SAADC->EVENTS_CALIBRATEDONE) {}
    NRF_SAADC->EVENTS_CALIBRATEDONE  = 0;
			
		//start saadc
		NRF_SAADC->TASKS_START = 1;
}

//ppi init using timer , config as timer_driver.c
void ppi_init(NRF_TIMER_Type * p_timer, uint16_t compare_time_us)
{
    p_timer->TASKS_STOP  = 1;
    p_timer->TASKS_CLEAR = 1;
    p_timer->MODE        = TIMER_MODE_MODE_Timer;
    p_timer->BITMODE     = TIMER_BITMODE_BITMODE_32Bit;
    p_timer->PRESCALER   = 4;                   // f_timer = 1MHz
    p_timer->CC[0]       = compare_time_us;     
    p_timer->SHORTS      = TIMER_SHORTS_COMPARE0_CLEAR_Msk;

		//wire timer event capture to saadc task sample
    NRF_PPI->CH[0].EEP = (uint32_t)&p_timer->EVENTS_COMPARE[0];
    NRF_PPI->CH[0].TEP = (uint32_t)&NRF_SAADC->TASKS_SAMPLE;
    NRF_PPI->CHENSET               = PPI_CHENSET_CH0_Msk;

    p_timer->TASKS_START = 1;
}


static volatile int16_t m_last_sample = 0;
static volatile bool    m_ready       = false;

void SAADC_IRQHandler(void)
{
    if (NRF_SAADC->EVENTS_END)
    {
        NRF_SAADC->EVENTS_END = 0;
				// take last sample in buff to m_last_sample
        m_last_sample            = m_buf[m_active][0];
        m_ready                  = true;
				//change to other buff (ping-pong)
        m_active                 ^= 1;
        NRF_SAADC->RESULT.PTR    = (uint32_t)m_buf[m_active];
        NRF_SAADC->RESULT.MAXCNT = SAMPLES_IN_BUFFER;
        NRF_SAADC->TASKS_START   = 1;
    }
}

bool adc_get_sample(int16_t *p_out)
{
		// put last_sample to p_out
    if (!m_ready) { return false; }
    *p_out  = m_last_sample;
    m_ready = false;           
    return true;
}

