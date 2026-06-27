#ifndef _TWI_H_
#define _TWI_H_

#include <stdint.h>
#include <stdbool.h>
#include <nrf52.h>
#include <stddef.h>
#include <nrf_gpio.h>
/* Register: TWIM_SHORTS */
/* Description: Shortcut register */

/* Bit 12 : Shortcut between LASTRX event and STOP task */
#define TWIM_SHORTS_LASTRX_STOP_Pos (12UL) /*!< Position of LASTRX_STOP field. */
#define TWIM_SHORTS_LASTRX_STOP_Msk (0x1UL << TWIM_SHORTS_LASTRX_STOP_Pos) /*!< Bit mask of LASTRX_STOP field. */
#define TWIM_SHORTS_LASTRX_STOP_Disabled (0UL) /*!< Disable shortcut */
#define TWIM_SHORTS_LASTRX_STOP_Enabled (1UL) /*!< Enable shortcut */

/* Bit 10 : Shortcut between LASTRX event and STARTTX task */
#define TWIM_SHORTS_LASTRX_STARTTX_Pos (10UL) /*!< Position of LASTRX_STARTTX field. */
#define TWIM_SHORTS_LASTRX_STARTTX_Msk (0x1UL << TWIM_SHORTS_LASTRX_STARTTX_Pos) /*!< Bit mask of LASTRX_STARTTX field. */
#define TWIM_SHORTS_LASTRX_STARTTX_Disabled (0UL) /*!< Disable shortcut */
#define TWIM_SHORTS_LASTRX_STARTTX_Enabled (1UL) /*!< Enable shortcut */

/* Bit 9 : Shortcut between LASTTX event and STOP task */
#define TWIM_SHORTS_LASTTX_STOP_Pos (9UL) /*!< Position of LASTTX_STOP field. */
#define TWIM_SHORTS_LASTTX_STOP_Msk (0x1UL << TWIM_SHORTS_LASTTX_STOP_Pos) /*!< Bit mask of LASTTX_STOP field. */
#define TWIM_SHORTS_LASTTX_STOP_Disabled (0UL) /*!< Disable shortcut */
#define TWIM_SHORTS_LASTTX_STOP_Enabled (1UL) /*!< Enable shortcut */

/* Bit 8 : Shortcut between LASTTX event and SUSPEND task */
#define TWIM_SHORTS_LASTTX_SUSPEND_Pos (8UL) /*!< Position of LASTTX_SUSPEND field. */
#define TWIM_SHORTS_LASTTX_SUSPEND_Msk (0x1UL << TWIM_SHORTS_LASTTX_SUSPEND_Pos) /*!< Bit mask of LASTTX_SUSPEND field. */
#define TWIM_SHORTS_LASTTX_SUSPEND_Disabled (0UL) /*!< Disable shortcut */
#define TWIM_SHORTS_LASTTX_SUSPEND_Enabled (1UL) /*!< Enable shortcut */

/* Bit 7 : Shortcut between LASTTX event and STARTRX task */
#define TWIM_SHORTS_LASTTX_STARTRX_Pos (7UL) /*!< Position of LASTTX_STARTRX field. */
#define TWIM_SHORTS_LASTTX_STARTRX_Msk (0x1UL << TWIM_SHORTS_LASTTX_STARTRX_Pos) /*!< Bit mask of LASTTX_STARTRX field. */
#define TWIM_SHORTS_LASTTX_STARTRX_Disabled (0UL) /*!< Disable shortcut */
#define TWIM_SHORTS_LASTTX_STARTRX_Enabled (1UL) /*!< Enable shortcut */

/** @brief TWIM interrupts. */
/* Register: TWIM_INTENSET */
/* Description: Enable interrupt */

/* Bit 24 : Write '1' to Enable interrupt for LASTTX event */
#define TWIM_INTENSET_LASTTX_Pos (24UL) /*!< Position of LASTTX field. */
#define TWIM_INTENSET_LASTTX_Msk (0x1UL << TWIM_INTENSET_LASTTX_Pos) /*!< Bit mask of LASTTX field. */
#define TWIM_INTENSET_LASTTX_Disabled (0UL) /*!< Read: Disabled */
#define TWIM_INTENSET_LASTTX_Enabled (1UL) /*!< Read: Enabled */
#define TWIM_INTENSET_LASTTX_Set (1UL) /*!< Enable */

/* Bit 23 : Write '1' to Enable interrupt for LASTRX event */
#define TWIM_INTENSET_LASTRX_Pos (23UL) /*!< Position of LASTRX field. */
#define TWIM_INTENSET_LASTRX_Msk (0x1UL << TWIM_INTENSET_LASTRX_Pos) /*!< Bit mask of LASTRX field. */
#define TWIM_INTENSET_LASTRX_Disabled (0UL) /*!< Read: Disabled */
#define TWIM_INTENSET_LASTRX_Enabled (1UL) /*!< Read: Enabled */
#define TWIM_INTENSET_LASTRX_Set (1UL) /*!< Enable */

/* Bit 20 : Write '1' to Enable interrupt for TXSTARTED event */
#define TWIM_INTENSET_TXSTARTED_Pos (20UL) /*!< Position of TXSTARTED field. */
#define TWIM_INTENSET_TXSTARTED_Msk (0x1UL << TWIM_INTENSET_TXSTARTED_Pos) /*!< Bit mask of TXSTARTED field. */
#define TWIM_INTENSET_TXSTARTED_Disabled (0UL) /*!< Read: Disabled */
#define TWIM_INTENSET_TXSTARTED_Enabled (1UL) /*!< Read: Enabled */
#define TWIM_INTENSET_TXSTARTED_Set (1UL) /*!< Enable */

/* Bit 19 : Write '1' to Enable interrupt for RXSTARTED event */
#define TWIM_INTENSET_RXSTARTED_Pos (19UL) /*!< Position of RXSTARTED field. */
#define TWIM_INTENSET_RXSTARTED_Msk (0x1UL << TWIM_INTENSET_RXSTARTED_Pos) /*!< Bit mask of RXSTARTED field. */
#define TWIM_INTENSET_RXSTARTED_Disabled (0UL) /*!< Read: Disabled */
#define TWIM_INTENSET_RXSTARTED_Enabled (1UL) /*!< Read: Enabled */
#define TWIM_INTENSET_RXSTARTED_Set (1UL) /*!< Enable */

/* Bit 18 : Write '1' to Enable interrupt for SUSPENDED event */
#define TWIM_INTENSET_SUSPENDED_Pos (18UL) /*!< Position of SUSPENDED field. */
#define TWIM_INTENSET_SUSPENDED_Msk (0x1UL << TWIM_INTENSET_SUSPENDED_Pos) /*!< Bit mask of SUSPENDED field. */
#define TWIM_INTENSET_SUSPENDED_Disabled (0UL) /*!< Read: Disabled */
#define TWIM_INTENSET_SUSPENDED_Enabled (1UL) /*!< Read: Enabled */
#define TWIM_INTENSET_SUSPENDED_Set (1UL) /*!< Enable */

/* Bit 9 : Write '1' to Enable interrupt for ERROR event */
#define TWIM_INTENSET_ERROR_Pos (9UL) /*!< Position of ERROR field. */
#define TWIM_INTENSET_ERROR_Msk (0x1UL << TWIM_INTENSET_ERROR_Pos) /*!< Bit mask of ERROR field. */
#define TWIM_INTENSET_ERROR_Disabled (0UL) /*!< Read: Disabled */
#define TWIM_INTENSET_ERROR_Enabled (1UL) /*!< Read: Enabled */
#define TWIM_INTENSET_ERROR_Set (1UL) /*!< Enable */

/* Bit 1 : Write '1' to Enable interrupt for STOPPED event */
#define TWIM_INTENSET_STOPPED_Pos (1UL) /*!< Position of STOPPED field. */
#define TWIM_INTENSET_STOPPED_Msk (0x1UL << TWIM_INTENSET_STOPPED_Pos) /*!< Bit mask of STOPPED field. */
#define TWIM_INTENSET_STOPPED_Disabled (0UL) /*!< Read: Disabled */
#define TWIM_INTENSET_STOPPED_Enabled (1UL) /*!< Read: Enabled */
#define TWIM_INTENSET_STOPPED_Set (1UL) /*!< Enable */


typedef enum
{
    NRF_TWIM_INT_STOPPED_MASK   = TWIM_INTENSET_STOPPED_Msk,   ///< Interrupt on STOPPED event.
    NRF_TWIM_INT_ERROR_MASK     = TWIM_INTENSET_ERROR_Msk,     ///< Interrupt on ERROR event.
    NRF_TWIM_INT_SUSPENDED_MASK = TWIM_INTENSET_SUSPENDED_Msk, ///< Interrupt on SUSPENDED event.
    NRF_TWIM_INT_RXSTARTED_MASK = TWIM_INTENSET_RXSTARTED_Msk, ///< Interrupt on RXSTARTED event.
    NRF_TWIM_INT_TXSTARTED_MASK = TWIM_INTENSET_TXSTARTED_Msk, ///< Interrupt on TXSTARTED event.
    NRF_TWIM_INT_LASTRX_MASK    = TWIM_INTENSET_LASTRX_Msk,    ///< Interrupt on LASTRX event.
    NRF_TWIM_INT_LASTTX_MASK    = TWIM_INTENSET_LASTTX_Msk,    ///< Interrupt on LASTTX event.
    NRF_TWIM_ALL_INTS_MASK      = TWIM_INTENSET_STOPPED_Msk   |
                                  TWIM_INTENSET_ERROR_Msk     |
                                  TWIM_INTENSET_SUSPENDED_Msk |
                                  TWIM_INTENSET_RXSTARTED_Msk |
                                  TWIM_INTENSET_TXSTARTED_Msk |
                                  TWIM_INTENSET_LASTRX_Msk    |
                                  TWIM_INTENSET_LASTTX_Msk     ///< All TWIM interrupts.
} nrf_twim_int_mask_t;

/** @brief TWIM events. */
typedef enum
{
    NRF_TWIM_EVENT_STOPPED   = offsetof(NRF_TWIM_Type, EVENTS_STOPPED),   ///< TWI stopped.
    NRF_TWIM_EVENT_ERROR     = offsetof(NRF_TWIM_Type, EVENTS_ERROR),     ///< TWI error.
    NRF_TWIM_EVENT_SUSPENDED = 0x148,                                     ///< TWI suspended.
    NRF_TWIM_EVENT_RXSTARTED = offsetof(NRF_TWIM_Type, EVENTS_RXSTARTED), ///< Receive sequence started.
    NRF_TWIM_EVENT_TXSTARTED = offsetof(NRF_TWIM_Type, EVENTS_TXSTARTED), ///< Transmit sequence started.
    NRF_TWIM_EVENT_LASTRX    = offsetof(NRF_TWIM_Type, EVENTS_LASTRX),    ///< Byte boundary, starting to receive the last byte.
    NRF_TWIM_EVENT_LASTTX    = offsetof(NRF_TWIM_Type, EVENTS_LASTTX)     ///< Byte boundary, starting to transmit the last byte.
} nrf_twim_event_t;

/** @brief TWIM tasks. */
typedef enum
{
    NRF_TWIM_TASK_STARTRX = offsetof(NRF_TWIM_Type, TASKS_STARTRX), ///< Start TWI receive sequence.
    NRF_TWIM_TASK_STARTTX = offsetof(NRF_TWIM_Type, TASKS_STARTTX), ///< Start TWI transmit sequence.
    NRF_TWIM_TASK_STOP    = offsetof(NRF_TWIM_Type, TASKS_STOP),    ///< Stop TWI transaction.
    NRF_TWIM_TASK_SUSPEND = offsetof(NRF_TWIM_Type, TASKS_SUSPEND), ///< Suspend TWI transaction.
    NRF_TWIM_TASK_RESUME  = offsetof(NRF_TWIM_Type, TASKS_RESUME)   ///< Resume TWI transaction.
} nrf_twim_task_t;

/* Register: TWIM_FREQUENCY */
/* Description: TWI frequency */

/* Bits 31..0 : TWI master clock frequency */
#define TWIM_FREQUENCY_FREQUENCY_Pos (0UL) /*!< Position of FREQUENCY field. */
#define TWIM_FREQUENCY_FREQUENCY_Msk (0xFFFFFFFFUL << TWIM_FREQUENCY_FREQUENCY_Pos) /*!< Bit mask of FREQUENCY field. */
#define TWIM_FREQUENCY_FREQUENCY_K100 (0x01980000UL) /*!< 100 kbps */
#define TWIM_FREQUENCY_FREQUENCY_K250 (0x04000000UL) /*!< 250 kbps */
#define TWIM_FREQUENCY_FREQUENCY_K400 (0x06400000UL) /*!< 400 kbps */

/** @brief TWIM master clock frequency. */
typedef enum
{
    NRF_TWIM_FREQ_100K = TWIM_FREQUENCY_FREQUENCY_K100, ///< 100 kbps.
    NRF_TWIM_FREQ_250K = TWIM_FREQUENCY_FREQUENCY_K250, ///< 250 kbps.
    NRF_TWIM_FREQ_400K = TWIM_FREQUENCY_FREQUENCY_K400  ///< 400 kbps.
} nrf_twim_frequency_t;


/* Register: TWIM_ENABLE */
/* Description: Enable TWIM */

/* Bits 3..0 : Enable or disable TWIM */
#define TWIM_ENABLE_ENABLE_Pos (0UL) /*!< Position of ENABLE field. */
#define TWIM_ENABLE_ENABLE_Msk (0xFUL << TWIM_ENABLE_ENABLE_Pos) /*!< Bit mask of ENABLE field. */
#define TWIM_ENABLE_ENABLE_Disabled (0UL) /*!< Disable TWIM */
#define TWIM_ENABLE_ENABLE_Enabled (6UL) /*!< Enable TWIM */



void twim_init(uint8_t scl_pin, uint8_t sda_pin);

void twim_tx(NRF_TWIM_Type * p_reg, uint8_t address,
             uint8_t const * p_buf, size_t len);
void twim_txrx(NRF_TWIM_Type * p_reg, uint8_t address,
               uint8_t const * p_tx_buf, size_t tx_len,
               uint8_t       * p_rx_buf, size_t rx_len);
#endif