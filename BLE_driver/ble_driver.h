#ifndef _BLE_H_
#define _BLE_H_

#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include "nordic_common.h"
#include "ble_hci.h"
#include "ble_advdata.h"
#include "ble_advertising.h"
#include "ble_conn_params.h"
#include "nrf_sdh.h"
#include "nrf_sdh_soc.h"
#include "nrf_sdh_ble.h"
#include "nrf_ble_gatt.h"
#include "nrf_ble_qwr.h"
#include "app_timer.h"
#include "app_error.h"
#include "nrf_log.h"
#include "nrf_error.h"

#include "cus_service.h"

#define APP_BLE_CONN_CFG_TAG        1
#define DEVICE_NAME                 "Wearable_dev"
#define NUS_SERVICE_UUID_TYPE       BLE_UUID_TYPE_VENDOR_BEGIN
#define APP_BLE_OBSERVER_PRIO       3
#define APP_ADV_INTERVAL            64        
#define APP_ADV_DURATION            18000       
#define MIN_CONN_INTERVAL           MSEC_TO_UNITS(200,  UNIT_1_25_MS)
#define MAX_CONN_INTERVAL           MSEC_TO_UNITS(20,  UNIT_1_25_MS)
#define SLAVE_LATENCY               0
#define CONN_SUP_TIMEOUT            MSEC_TO_UNITS(4000, UNIT_10_MS)
#define FIRST_CONN_PARAMS_UPDATE_DELAY  APP_TIMER_TICKS(5000)
#define NEXT_CONN_PARAMS_UPDATE_DELAY   APP_TIMER_TICKS(30000)
#define MAX_CONN_PARAMS_UPDATE_COUNT    3

#define PACKET_SAMPLES_DEFAULT   50U     
#define PACKET_SAMPLES_MAX       128U   


BLE_CUS_DEF(m_cus);
NRF_BLE_GATT_DEF(m_gatt);
NRF_BLE_QWR_DEF(m_qwr);
BLE_ADVERTISING_DEF(m_advertising);

static uint16_t   m_conn_handle        = BLE_CONN_HANDLE_INVALID;
static uint16_t   m_ble_max_data_len   = BLE_GATT_ATT_MTU_DEFAULT - 3;
static volatile bool m_mtu_negotiated  = false; 
static volatile int8_t m_rssi          = 0;     
static ble_uuid_t m_adv_uuids[]        = { {CUS_SERVICE_UUID, NUS_SERVICE_UUID_TYPE} };

void ble_init();
uint32_t ble_app_send(uint8_t const *data, uint16_t len);
#endif