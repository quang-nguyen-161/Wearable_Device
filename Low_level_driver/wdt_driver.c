#include "wdt_driver.h"


// follow instruction on https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/wdt.html
//watchdog timeout calculated by: timeout [s] = ( CRV + 1 ) / 32768

void wdt_init(uint32_t timeout_ms)
{
	// CRV = 32767 equal to 1000ms
	uint32_t crv = ((timeout_ms * 32768UL) / 1000UL) - 1;
	NRF_WDT->CRV = crv;
	
	// enable reload request register 0
    NRF_WDT->RREN = WDT_RREN_RR0_Msk;
	
	// Run while CPU sleeps 
    NRF_WDT->CONFIG =  (WDT_CONFIG_SLEEP_Run << WDT_CONFIG_SLEEP_Pos);
	
	//start wdt
	 NRF_WDT->TASKS_START = 1;  
}

void wdt_feed()
{
	//0x6E524635 is fixed value
	NRF_WDT->RR[0] = 0x6E524635;
}