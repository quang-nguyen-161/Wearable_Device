
# nRF52832 wearable devices using low level registers

Follow nRF52 Product Specifications at https://docs.nordicsemi.com/r/bundle/ps_nrf52832/page/nrf52832_ps.html

Use Registers typedef, enum & defines at:
 + ..\NordicSemiconductor\nRF_DeviceFamilyPack\8.40.3\Device\Include\nrf52.h
 + ..\NordicSemiconductor\nRF_DeviceFamilyPack\8.40.3\Device\Include\nrf52_bitfields.h

## Peripherals & Sensors

#### Used Peripherals:
+ TWI (I2C) Master: TWI as Master using easyDMA
+ SPI Master: SPI as Master using easyDMA
+ Timer: configure timer as compare mode for ticks
+ NVMC: Non-volatile memory controller for flash storage without using existed FDS layer
+ WDT: Watch-dog timer
+ SAADC: Successive approximation analog-to-digital using easyDMA
+ PPI: Programmable peripheral interconnect, connect events & tasks of different peripherals without using CPU
#### Sensors & LCD:
+ MAX30102: I2C, use for hr & spo2
+ TMP117: I2C, use for temperature
+ AD8232: analog output, use for ECG hr
+ GC9A01: SPI, lcd use for display

- MAX30102 & TMP117 use the same I2C bus
- AD8232 connected to AIN0 (P0.2) of nRF52832

## Sơ đồ khối

<img width="2656" height="1602" alt="sodothietbi" src="https://github.com/user-attachments/assets/4862195d-d8f4-4eff-b814-20ae2fa806d3" />


   #### Sơ đồ khối của thiết bị và các cảm biến sử dụng 

## Chế độ liên tục

<img width="2103" height="1380" alt="continuous_mode drawio" src="https://github.com/user-attachments/assets/8b75da43-8ed8-411e-adac-1582c03eac32" />

- Chế độ liên tục của thiết bị, hoạt động dựa trên ticks 10ms để lấy dữ liệu cảm biến max30102, sau đó đưa tính hiệu vào ringbuff và tính toán ra giá trị nhịp tim, SpO2. Nhiệt độ được lấy mỗi 200ms ~ 20 chu kỳ ticks.
- Chu kỳ gửi bản tin BLE là 5s ~ 500 chu kỳ ticks.
- Khi các ticks false, mcu sẽ ở trong chế độ idle (set theo hàm pwr_mgmt() của SDK)

## Chế độ đo theo chu kỳ

<img width="2328" height="2025" alt="periodic_mode drawio (1)" src="https://github.com/user-attachments/assets/5a1b1f86-488a-48cb-8804-b8090a2d1feb" />

- Chế độ đo theo chu kỳ của thiết bị, hoạt động dựa trên ticks 10ms, gồm 2 pha: thu thập dữ liệu và ngủ. Pha thu thập dữ liệu mặc định 5s ~ 500 chu kỳ ticks, pha ngủ 5s ~ 500 chu kỳ ticks.
- Trong pha thu thập dữ liệu, hoạt động như chế độ liên tục. Cuối pha thu thập dữ liệu bản tin BLE được gửi đi. Trong pha ngủ, tắt các cảm biến và mcu.

## Chế độ đo ECG

<img width="1486" height="996" alt="ecg_mode" src="https://github.com/user-attachments/assets/83c2f8f7-68b9-40d1-aa1e-4ab717bca2b4" />

- Chế độ đo ECG, hoạt động riêng biệt & song song với 2 chế độ trên, chu kỳ lấy mẫu dựa trên ecg_ticks, mỗi ticks 4ms ~ 250Hz.
- Hoạt động liên tục trong chế độ liên tục và chỉ hoạt động ở pha thu thập dữ liệu trong chế độ đo theo chu kỳ.
- Có thể lựa chọn bật tắt chế độ đo này.

## Tiến độ

Nhiệm vụ đã hoàn thành:
- Code các ngoại vi của thiết bị như TWI(I2C), SPI, Timer, WDT, Flash, ADC sử dụng thanh ghi. Với TWI, SPI sử dụng EasyDMA, với ADC sử dụng SAADC kết hợp với Timer và PPI.
- Code lại các cảm biến MAX30102 và TMP117 sử dụng các hàm I2C dựa trên thanh ghi. Với AD8232, đọc đầu ra tương tự bằng ADC của nRF52832.
- Code màn hình LCD sử dụng các hàm SPI dựa trên thanh ghi.
- Lưu các giá trị config của thiết bị vào flash.
- thêm WDT vào thiết bị (timeout = 10s).

Chưa hoàn thành:
- Chưa viết lại luồng xử lý downlink từ gateway xuống thiết bị.
- Chưa hoàn thiện lại các hàm xử lý bộ lọc & tính toán nhịp tim, SpO2.
- Chưa viết lại các hàm dashboard hiển thị LCD.
