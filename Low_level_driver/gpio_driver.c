#include "gpio_driver.h"

//https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/gpio.html 

void gpio_output_cfg(uint32_t pin)
{
	//nRF52832 only have port P0
	// config output, no pull up/down, standard drive
	 NRF_P0->PIN_CNF[pin] = NRF_P0->PIN_CNF[pin] =
            (GPIO_PIN_CNF_DIR_Output << GPIO_PIN_CNF_DIR_Pos) |
            (GPIO_PIN_CNF_INPUT_Disconnect << GPIO_PIN_CNF_INPUT_Pos) |
            (GPIO_PIN_CNF_PULL_Disabled << GPIO_PIN_CNF_PULL_Pos) |
            (GPIO_PIN_CNF_DRIVE_S0S1 << GPIO_PIN_CNF_DRIVE_Pos) |
            (GPIO_PIN_CNF_SENSE_Disabled << GPIO_PIN_CNF_SENSE_Pos);
    
}

void gpio_set(uint32_t pin)
{
    NRF_P0->OUTSET = (1UL << pin);
}

void gpio_clear(uint32_t pin)
{
    NRF_P0->OUTCLR = (1UL << pin);
}

void gpio_toggle(uint32_t pin)
{
    NRF_P0->OUT ^= (1UL << pin);
}
