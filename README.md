nRF52832 wearable devices using low level registers

Follow nRF52 Product Specifications at https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/nrf52832_ps.html

Use Registers typedef, enum & defines at:
 + ..\NordicSemiconductor\nRF_DeviceFamilyPack\8.40.3\Device\Include\nrf52.h
 + ..\NordicSemiconductor\nRF_DeviceFamilyPack\8.40.3\Device\Include\nrf52_bitfields.h

Used Peripherals:

+ TWI (I2C) Master: TWI as Master using easyDMA
+ SPI Master: SPI as Master using easyDMA
+ Timer: configure timer as compare mode for ticks
+ NVMC: Non-volatile memory controller for flash storage without using existed FDS layer
+ WDT: Watch-dog timer

