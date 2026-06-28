#include "spi_driver.h"

void spi_init(NRF_SPIM_Type* p_reg, uint32_t scl_pin, uint32_t sda_pin)
{
	//disable before config
	p_reg->ENABLE = (SPIM_ENABLE_ENABLE_Disabled << SPIM_ENABLE_ENABLE_Pos);
	
	//spi pins config, only use scl pin and sda pin (mosi pin) 
	p_reg->PSEL.SCK  = scl_pin;
  p_reg->PSEL.MOSI = sda_pin;
	p_reg->PSEL.MISO = 0xFFFFFFFF; //unused
	//frequency config 8Mbps
	p_reg->FREQUENCY = SPIM_FREQUENCY_FREQUENCY_M8;
	
	//mode config : mode 0 <-> CPOL = 0 CPHA = 0
	p_reg->CONFIG =
        (SPIM_CONFIG_CPOL_ActiveHigh << SPIM_CONFIG_CPOL_Pos) |
        (SPIM_CONFIG_CPHA_Leading    << SPIM_CONFIG_CPHA_Pos) |
        (SPIM_CONFIG_ORDER_MsbFirst  << SPIM_CONFIG_ORDER_Pos);
	
	//clear events
	p_reg->EVENTS_END   = 0;
  p_reg->EVENTS_STOPPED = 0;
  p_reg->EVENTS_STARTED = 0;
	
	//enable spim
	p_reg->ENABLE = (SPIM_ENABLE_ENABLE_Enabled << SPIM_ENABLE_ENABLE_Pos);
	
}

void spim_tx(NRF_SPIM_Type* p_reg, uint8_t const *tx_buf, uint8_t len)
{
	
	while (p_reg->EVENTS_END == 0);
	
	//clear events
	p_reg->EVENTS_END   = 0;
  p_reg->EVENTS_STOPPED = 0;
  p_reg->EVENTS_STARTED = 0;
	
	//set tx buffer
	p_reg->TXD.PTR = (uint32_t)tx_buf;
  p_reg->TXD.MAXCNT = len;
	
	//set rx buffer (unused)
	static uint8_t dummy_rx;
	p_reg->RXD.PTR = (uint32_t)&dummy_rx;
	p_reg->RXD.MAXCNT = len;
	
	//start tx task
	p_reg->TASKS_START = 1;
	
	//wait 
	 while (p_reg->EVENTS_END == 0);
	
}