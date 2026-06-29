#include "timer_driver.h"

// timers on nRF52832, only using low level registers
// follow instruction on https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/timer.html

static timer_cb_t timer_callback = NULL;

void timer_compare_init(NRF_TIMER_Type* p_reg, timer_cb_t cb , uint32_t compare_time_us)
{
	timer_callback = cb;
	
	size_t number = 0;
	
	//disable timer before config
	p_reg->TASKS_STOP = 1;
	p_reg->TASKS_CLEAR = 1;
	
	//set prescaler
	p_reg->MODE = TIMER_MODE_MODE_Timer;
	p_reg->BITMODE = TIMER_BITMODE_BITMODE_32Bit;
	//f_timer = 16MHz/(2^PRESCALER), prescaler = 4 -> f_timer = 1MHz
	p_reg->PRESCALER = 4; 
	
	//set compare time in us
	p_reg->CC[0] = compare_time_us;
	
	//add shorts
	p_reg->SHORTS = TIMER_SHORTS_COMPARE0_CLEAR_Msk;
	
	//set interrupt mask
	p_reg->INTENSET = TIMER_INTENSET_COMPARE0_Msk;
	
	// enable timer interrupt
	IRQn_Type irq;

  if (p_reg == NRF_TIMER0)
        irq = TIMER0_IRQn;
  else if (p_reg == NRF_TIMER1)
        irq = TIMER1_IRQn;
  else if (p_reg == NRF_TIMER2)
        irq = TIMER2_IRQn;
  else if (p_reg == NRF_TIMER3)
        irq = TIMER3_IRQn;
  else
        irq = TIMER4_IRQn;
		
	NVIC_ClearPendingIRQ(irq);
  NVIC_SetPriority(irq, 3);
  NVIC_EnableIRQ(irq);

	//timer start
  p_reg->TASKS_START = 1;
}

void TIMER3_IRQHandler(void)
{
    if (NRF_TIMER3->EVENTS_COMPARE[0])
    {
        NRF_TIMER3->EVENTS_COMPARE[0] = 0;

        if (timer_callback)
            timer_callback();
    }
}
