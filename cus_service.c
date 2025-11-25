/**
 * Copyright (c) 2012 - 2020, Nordic Semiconductor ASA
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form, except as embedded into a Nordic
 *    Semiconductor ASA integrated circuit in a product or a software update for
 *    such product, must reproduce the above copyright notice, this list of
 *    conditions and the following disclaimer in the documentation and/or other
 *    materials provided with the distribution.
 *
 * 3. Neither the name of Nordic Semiconductor ASA nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * 4. This software, with or without modification, must only be used with a
 *    Nordic Semiconductor ASA integrated circuit.
 *
 * 5. Any software provided in binary form under this license must not be reverse
 *    engineered, decompiled, modified and/or disassembled.
 *
 * THIS SOFTWARE IS PROVIDED BY NORDIC SEMICONDUCTOR ASA "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */
#include "sdk_common.h"
#include "ble.h"
#include "cus_service.h"
#include "ble_srv_common.h"

#include "nrf_log.h"
#include "nrf_log_ctrl.h"


#define BLE_NUS_MAX_RX_CHAR_LEN        BLE_NUS_MAX_DATA_LEN /**< Maximum length of the RX Characteristic (in bytes). */
#define BLE_NUS_MAX_TX_CHAR_LEN        BLE_NUS_MAX_DATA_LEN /**< Maximum length of the TX Characteristic (in bytes). */

static void on_connect(ble_cus_t * p_cus, ble_evt_t const * p_ble_evt)
{
    p_cus->conn_handle = p_ble_evt->evt.gap_evt.conn_handle;
}

static void on_disconnect(ble_cus_t * p_cus, ble_evt_t const * p_ble_evt)
{
    UNUSED_PARAMETER(p_ble_evt);
    p_cus->conn_handle = BLE_CONN_HANDLE_INVALID;
}

/**@brief Function for handling the @ref BLE_GATTS_EVT_WRITE event from the SoftDevice.
 *
 * @param[in] p_nus     Nordic UART Service structure.
 * @param[in] p_ble_evt Pointer to the event received from BLE stack.
 */
static void on_write(ble_cus_t * p_cus, ble_evt_t const * p_ble_evt)
{
    ret_code_t                    err_code;
    ble_cus_evt_t                 evt;
    ble_gatts_evt_write_t const * p_evt_write = &p_ble_evt->evt.gatts_evt.params.write;

    memset(&evt, 0, sizeof(ble_cus_evt_t));
    evt.p_cus       = p_cus;
    evt.conn_handle = p_ble_evt->evt.gatts_evt.conn_handle;

    if (p_evt_write->handle == p_cus->tx_handles.cccd_handle)
    {

		if (ble_srv_is_notification_enabled(p_evt_write->data))
		{
			evt.type                          = BLE_CUS_EVT_NOTIFY_ENABLE;
		}
		else
		{
			evt.type                          = BLE_CUS_EVT_NOTIFY_DISABLE;
		}

		if (p_cus->data_handler != NULL)
		{
			p_cus->data_handler(&evt);
		}
    }
    else if ((p_evt_write->handle == p_cus->rx_handles.value_handle) &&
             (p_cus->data_handler != NULL))
    {
        evt.type                  = BLE_CUS_EVT_RX_DATA;
		
        evt.params.rx_data.p_data = p_evt_write->data;
        evt.params.rx_data.length = p_evt_write->len;
		
		//NRF_LOG_HEXDUMP_DEBUG(evt.params.rx_data.p_data, evt.params.rx_data.length);
		//NRF_LOG_INFO("Data: 0x%x, Length: %d", p_evt_write->data, p_evt_write->len);

        p_cus->data_handler(&evt);
    }
    else
    {
        // Do Nothing. This event is not relevant for this service.
    }
}


void ble_cus_on_ble_evt(ble_evt_t const * p_ble_evt, void * p_context)
{
    if ((p_context == NULL) || (p_ble_evt == NULL))
    {
        return;
    }

    ble_cus_t * p_cus = (ble_cus_t *)p_context;

    switch (p_ble_evt->header.evt_id)
    {
		case BLE_GAP_EVT_CONNECTED:
            on_connect(p_cus, p_ble_evt);
            break;

        case BLE_GAP_EVT_DISCONNECTED:
            on_disconnect(p_cus, p_ble_evt);
            break;
			
        case BLE_GATTS_EVT_WRITE:
            on_write(p_cus, p_ble_evt);
            break;
			
        default:
            // No implementation needed.
            break;
    }
}


uint32_t ble_cus_init(ble_cus_t * p_cus, ble_cus_init_t const * p_cus_init)
{
    ret_code_t            err_code;
    ble_uuid_t            ble_uuid;
    ble_uuid128_t         cus_base_uuid = CUSTOM_SERVICE_UUID_BASE;
    ble_add_char_params_t add_char_params;

    VERIFY_PARAM_NOT_NULL(p_cus);
    VERIFY_PARAM_NOT_NULL(p_cus_init);

    // Initialize the service structure.
    p_cus->data_handler = p_cus_init->data_handler;
	p_cus->conn_handle		= BLE_CONN_HANDLE_INVALID;

    /**@snippet [Adding proprietary Service to the SoftDevice] */
    // Add a custom base UUID.
    err_code = sd_ble_uuid_vs_add(&cus_base_uuid, &p_cus->uuid_type);
    VERIFY_SUCCESS(err_code);

    ble_uuid.type = p_cus->uuid_type;
    ble_uuid.uuid = CUSTOM_SERVICE_UUID;

    // Add the service.
    err_code = sd_ble_gatts_service_add(BLE_GATTS_SRVC_TYPE_PRIMARY,
                                        &ble_uuid,
                                        &p_cus->service_handle);
    /**@snippet [Adding proprietary Service to the SoftDevice] */
    VERIFY_SUCCESS(err_code);

    // Add the RX Characteristic.
    memset(&add_char_params, 0, sizeof(add_char_params));
    add_char_params.uuid                     = BLE_UUID_NUS_RX_CHARACTERISTIC;
    add_char_params.uuid_type                = p_cus->uuid_type;
    add_char_params.max_len                  = BLE_NUS_MAX_RX_CHAR_LEN;
    add_char_params.init_len                 = sizeof(uint8_t);
    add_char_params.is_var_len               = true;
    add_char_params.char_props.write         = 1;
	add_char_params.char_props.read         = 1;

    add_char_params.read_access  = SEC_OPEN;
    add_char_params.write_access = SEC_OPEN;

    err_code = characteristic_add(p_cus->service_handle, &add_char_params, &p_cus->rx_handles);
    if (err_code != NRF_SUCCESS)
    {
        return err_code;
    }

    // Add the TX Characteristic.
    /**@snippet [Adding proprietary characteristic to the SoftDevice] */
    memset(&add_char_params, 0, sizeof(add_char_params));
    add_char_params.uuid              = BLE_UUID_NUS_TX_CHARACTERISTIC;
    add_char_params.uuid_type         = p_cus->uuid_type;
    add_char_params.max_len           = BLE_NUS_MAX_TX_CHAR_LEN;
    add_char_params.init_len          = sizeof(uint8_t);
    add_char_params.is_var_len        = true;
    add_char_params.char_props.notify = 1;
	add_char_params.char_props.read   = 1;

    add_char_params.read_access       = SEC_OPEN;
    add_char_params.cccd_write_access = SEC_OPEN;

    return characteristic_add(p_cus->service_handle, &add_char_params, &p_cus->tx_handles);
    /**@snippet [Adding proprietary characteristic to the SoftDevice] */
}


uint32_t ble_cus_data_send(ble_cus_t * p_cus,
                           uint8_t   * p_data,
                           uint16_t  * p_length,
                           uint16_t    conn_handle)
{
    ret_code_t                 err_code;
    ble_gatts_hvx_params_t     hvx_params;

    VERIFY_PARAM_NOT_NULL(p_cus);

    if (*p_length > BLE_NUS_MAX_DATA_LEN)
    {
		err_code = NRF_ERROR_INVALID_PARAM;
		NRF_LOG_INFO("NRF_ERROR_INVALID_PARAM");
    }
	
	//if ((p_cus->conn_handle != BLE_CONN_HANDLE_INVALID))
    {
		memset(&hvx_params, 0, sizeof(hvx_params));

		hvx_params.handle = p_cus->tx_handles.value_handle;
		hvx_params.p_data = p_data;
		hvx_params.p_len  = p_length;
		hvx_params.type   = BLE_GATT_HVX_NOTIFICATION;

		err_code = sd_ble_gatts_hvx(conn_handle, &hvx_params);
		
		//if (err_code != NRF_SUCCESS)
		//{
		//	NRF_LOG_INFO("Send notification fail: 0x%08X", err_code);
		//}	
    }
	//else
	//{ 
	//	NRF_LOG_INFO("BLE_CONN_HANDLE_INVALID");
	//	err_code = BLE_CONN_HANDLE_INVALID;
	//}
	
	//NRF_LOG_INFO("cus_data_send: 0x%08X", err_code);
	//NRF_LOG_FLUSH();
	return err_code;
}
