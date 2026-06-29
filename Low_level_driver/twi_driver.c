#include "twi_driver.h"
#include "nrf_log.h"

// twi master with easyDMA, only using low level registers
// follow instruction on https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/twim.html

void twim_tx(NRF_TWIM_Type * p_reg, uint8_t address, uint8_t const * p_buf, size_t len)
{
	
	// clear events
	p_reg->EVENTS_STOPPED  = 0;
  p_reg->EVENTS_ERROR    = 0;
  p_reg->EVENTS_LASTTX   = 0;
	
	// no shortcuts
	p_reg->SHORTS = 0;
	
	
	// set address
	p_reg->ADDRESS = address;
	
	// set tx buffer for easyDMA
	p_reg->TXD.PTR = (uint32_t)p_buf;
	p_reg->TXD.MAXCNT = len;
	
	
	// tx start
	p_reg->TASKS_STARTTX = 1;
	
	// wait for LASTTX flag and reset flag
	while (!p_reg->EVENTS_LASTTX)
{
    if (p_reg->EVENTS_ERROR)
    {
        uint32_t err = p_reg->ERRORSRC;
        p_reg->ERRORSRC = err;     
        p_reg->EVENTS_ERROR = 0;
        return;
    }
}
    p_reg->EVENTS_LASTTX = 0;
	
	// stop tx
	p_reg->TASKS_STOP = 1;
	
	// wait for STOPPED condition flag
	while (!p_reg->EVENTS_STOPPED)
		if (p_reg->EVENTS_ERROR)
    {
        uint32_t err = p_reg->ERRORSRC;
        p_reg->ERRORSRC = err;     
        p_reg->EVENTS_ERROR = 0;
        return;
    }
    p_reg->EVENTS_STOPPED = 0;
}

void twim_txrx(NRF_TWIM_Type * p_reg, uint8_t address, uint8_t const *p_tx_buf, size_t tx_len, uint8_t * p_rx_buf, size_t rx_len)
{
    // set address
    p_reg->ADDRESS = address;

    // set register to read from ( p_tx_buf should be read reg & tx_len usually == 1)
    p_reg->TXD.PTR = (uint32_t) p_tx_buf;
		p_reg->TXD.MAXCNT = tx_len;

    // set rx buffer
    p_reg->RXD.PTR = (uint32_t) p_rx_buf;
		p_reg->RXD.MAXCNT = rx_len;

    // clear events
    p_reg->EVENTS_STOPPED  = 0;
    p_reg->EVENTS_ERROR    = 0;
    p_reg->EVENTS_LASTTX   = 0;
    p_reg->EVENTS_LASTRX   = 0;

    // shortcuts for rx after tx and stop after rx
    p_reg->SHORTS = (TWIM_SHORTS_LASTTX_STARTRX_Enabled << TWIM_SHORTS_LASTTX_STARTRX_Pos)
                  | (TWIM_SHORTS_LASTRX_STOP_Enabled    << TWIM_SHORTS_LASTRX_STOP_Pos);

    // change back to tx 
    p_reg->TASKS_STARTTX = 1;

    // wait for STOP condition flag
    while (!p_reg->EVENTS_STOPPED)
{
    if (p_reg->EVENTS_ERROR)
    {
        uint32_t err = p_reg->ERRORSRC;
        p_reg->ERRORSRC = err;
        p_reg->EVENTS_ERROR = 0;
        return;
    }
}
    p_reg->EVENTS_STOPPED = 0;

    // clear shortcuts
    p_reg->SHORTS = 0;
}
void twim_init(NRF_TWIM_Type * p_reg, uint8_t scl_pin, uint8_t sda_pin)
{
    // disable twim
    p_reg->ENABLE = (TWIM_ENABLE_ENABLE_Disabled << TWIM_ENABLE_ENABLE_Pos);

    // map scl & sda pins to twim
    p_reg->PSEL.SCL = scl_pin;
		p_reg->PSEL.SDA = sda_pin;

    // set frequency at 400 kbps
    p_reg->FREQUENCY = TWIM_FREQUENCY_FREQUENCY_K400 << TWIM_FREQUENCY_FREQUENCY_Pos;

    // enable twim
    p_reg->ENABLE = (TWIM_ENABLE_ENABLE_Enabled<< TWIM_ENABLE_ENABLE_Pos);
}



