#include "twi_driver.h"
#include "nrf_log.h"

__STATIC_INLINE void nrf_twim_enable(NRF_TWIM_Type * p_reg)
{
    p_reg->ENABLE = (TWIM_ENABLE_ENABLE_Enabled << TWIM_ENABLE_ENABLE_Pos);
}
__STATIC_INLINE void nrf_twim_disable(NRF_TWIM_Type * p_reg)
{
    p_reg->ENABLE = (TWIM_ENABLE_ENABLE_Disabled << TWIM_ENABLE_ENABLE_Pos);
}

__STATIC_INLINE void nrf_twim_pins_set(NRF_TWIM_Type * p_reg,
                                       uint32_t scl_pin,
                                       uint32_t sda_pin)
{
    p_reg->PSEL.SCL = scl_pin;
    p_reg->PSEL.SDA = sda_pin;
}

__STATIC_INLINE void nrf_twim_frequency_set(NRF_TWIM_Type * p_reg,
                                            nrf_twim_frequency_t frequency)
{
    p_reg->FREQUENCY = frequency;
}

__STATIC_INLINE void nrf_twim_address_set(NRF_TWIM_Type * p_reg,
                                          uint8_t address)
{
    p_reg->ADDRESS = address;
}

__STATIC_INLINE void nrf_twim_tx_buffer_set(NRF_TWIM_Type * p_reg,
                                            uint8_t const * p_buffer,
                                            size_t          length)
{
    p_reg->TXD.PTR    = (uint32_t)p_buffer;
    p_reg->TXD.MAXCNT = length;
}

__STATIC_INLINE void nrf_twim_rx_buffer_set(NRF_TWIM_Type * p_reg,
                                            uint8_t * p_buffer,
                                            size_t    length)
{
    p_reg->RXD.PTR    = (uint32_t)p_buffer;
    p_reg->RXD.MAXCNT = length;
}


void twim_tx(NRF_TWIM_Type * p_reg, uint8_t address, uint8_t const * p_buf, size_t len)
{
	
	// clear events
	p_reg->EVENTS_STOPPED  = 0;
  p_reg->EVENTS_ERROR    = 0;
  p_reg->EVENTS_LASTTX   = 0;
	
	// no shortcuts
	p_reg->SHORTS = 0;
	
	
	// set address
	nrf_twim_address_set(p_reg, address);
	
	// set tx buffer for easyDMA
	nrf_twim_tx_buffer_set(p_reg, p_buf, len);
	
	
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
    nrf_twim_address_set(p_reg, address);

    // set register to read from ( p_tx_buf should be read reg & tx_len usually == 1)
    nrf_twim_tx_buffer_set(p_reg, p_tx_buf, tx_len);

    // set rx buffer
    nrf_twim_rx_buffer_set(p_reg, p_rx_buf, rx_len);

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
    while (!p_reg->EVENTS_STOPPED);
    p_reg->EVENTS_STOPPED = 0;

    // clear shortcuts
    p_reg->SHORTS = 0;
}
void twim_init(uint8_t scl_pin, uint8_t sda_pin)
{
    // disable twim
    nrf_twim_disable(NRF_TWIM0);

    // map scl & sda pins to twim0
    nrf_twim_pins_set(NRF_TWIM0, scl_pin, sda_pin);

    // set frequency
    nrf_twim_frequency_set(NRF_TWIM0, NRF_TWIM_FREQ_100K);

    // enable twi0
    nrf_twim_enable(NRF_TWIM0);
}



