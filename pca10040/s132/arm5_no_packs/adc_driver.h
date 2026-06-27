#ifndef _ADC_H_
#define _ADC_H_

#include <nrf52.h>
#include <stdbool.h>
#include <nrf_assert.h>
#include "sdk_config.h"
/* Register: SAADC_CH_CONFIG */
/* Description: Description cluster[0]:  Input configuration for CH[0] */

/* Bit 24 : Enable burst mode */
#define SAADC_CH_CONFIG_BURST_Pos (24UL) /*!< Position of BURST field. */
#define SAADC_CH_CONFIG_BURST_Msk (0x1UL << SAADC_CH_CONFIG_BURST_Pos) /*!< Bit mask of BURST field. */
#define SAADC_CH_CONFIG_BURST_Disabled (0UL) /*!< Burst mode is disabled (normal operation) */
#define SAADC_CH_CONFIG_BURST_Enabled (1UL) /*!< Burst mode is enabled. SAADC takes 2^OVERSAMPLE number of samples as fast as it can, and sends the average to Data RAM. */

/* Bit 20 : Enable differential mode */
#define SAADC_CH_CONFIG_MODE_Pos (20UL) /*!< Position of MODE field. */
#define SAADC_CH_CONFIG_MODE_Msk (0x1UL << SAADC_CH_CONFIG_MODE_Pos) /*!< Bit mask of MODE field. */
#define SAADC_CH_CONFIG_MODE_SE (0UL) /*!< Single ended, PSELN will be ignored, negative input to ADC shorted to GND */
#define SAADC_CH_CONFIG_MODE_Diff (1UL) /*!< Differential */

/* Bits 18..16 : Acquisition time, the time the ADC uses to sample the input voltage */
#define SAADC_CH_CONFIG_TACQ_Pos (16UL) /*!< Position of TACQ field. */
#define SAADC_CH_CONFIG_TACQ_Msk (0x7UL << SAADC_CH_CONFIG_TACQ_Pos) /*!< Bit mask of TACQ field. */
#define SAADC_CH_CONFIG_TACQ_3us (0UL) /*!< 3 us */
#define SAADC_CH_CONFIG_TACQ_5us (1UL) /*!< 5 us */
#define SAADC_CH_CONFIG_TACQ_10us (2UL) /*!< 10 us */
#define SAADC_CH_CONFIG_TACQ_15us (3UL) /*!< 15 us */
#define SAADC_CH_CONFIG_TACQ_20us (4UL) /*!< 20 us */
#define SAADC_CH_CONFIG_TACQ_40us (5UL) /*!< 40 us */

/* Bit 12 : Reference control */
#define SAADC_CH_CONFIG_REFSEL_Pos (12UL) /*!< Position of REFSEL field. */
#define SAADC_CH_CONFIG_REFSEL_Msk (0x1UL << SAADC_CH_CONFIG_REFSEL_Pos) /*!< Bit mask of REFSEL field. */
#define SAADC_CH_CONFIG_REFSEL_Internal (0UL) /*!< Internal reference (0.6 V) */
#define SAADC_CH_CONFIG_REFSEL_VDD1_4 (1UL) /*!< VDD/4 as reference */

/* Bits 10..8 : Gain control */
#define SAADC_CH_CONFIG_GAIN_Pos (8UL) /*!< Position of GAIN field. */
#define SAADC_CH_CONFIG_GAIN_Msk (0x7UL << SAADC_CH_CONFIG_GAIN_Pos) /*!< Bit mask of GAIN field. */
#define SAADC_CH_CONFIG_GAIN_Gain1_6 (0UL) /*!< 1/6 */
#define SAADC_CH_CONFIG_GAIN_Gain1_5 (1UL) /*!< 1/5 */
#define SAADC_CH_CONFIG_GAIN_Gain1_4 (2UL) /*!< 1/4 */
#define SAADC_CH_CONFIG_GAIN_Gain1_3 (3UL) /*!< 1/3 */
#define SAADC_CH_CONFIG_GAIN_Gain1_2 (4UL) /*!< 1/2 */
#define SAADC_CH_CONFIG_GAIN_Gain1 (5UL) /*!< 1 */
#define SAADC_CH_CONFIG_GAIN_Gain2 (6UL) /*!< 2 */
#define SAADC_CH_CONFIG_GAIN_Gain4 (7UL) /*!< 4 */

/* Bits 5..4 : Negative channel resistor control */
#define SAADC_CH_CONFIG_RESN_Pos (4UL) /*!< Position of RESN field. */
#define SAADC_CH_CONFIG_RESN_Msk (0x3UL << SAADC_CH_CONFIG_RESN_Pos) /*!< Bit mask of RESN field. */
#define SAADC_CH_CONFIG_RESN_Bypass (0UL) /*!< Bypass resistor ladder */
#define SAADC_CH_CONFIG_RESN_Pulldown (1UL) /*!< Pull-down to GND */
#define SAADC_CH_CONFIG_RESN_Pullup (2UL) /*!< Pull-up to VDD */
#define SAADC_CH_CONFIG_RESN_VDD1_2 (3UL) /*!< Set input at VDD/2 */

/* Bits 1..0 : Positive channel resistor control */
#define SAADC_CH_CONFIG_RESP_Pos (0UL) /*!< Position of RESP field. */
#define SAADC_CH_CONFIG_RESP_Msk (0x3UL << SAADC_CH_CONFIG_RESP_Pos) /*!< Bit mask of RESP field. */
#define SAADC_CH_CONFIG_RESP_Bypass (0UL) /*!< Bypass resistor ladder */
#define SAADC_CH_CONFIG_RESP_Pulldown (1UL) /*!< Pull-down to GND */
#define SAADC_CH_CONFIG_RESP_Pullup (2UL) /*!< Pull-up to VDD */
#define SAADC_CH_CONFIG_RESP_VDD1_2 (3UL) /*!< Set input at VDD/2 */

/** @brief Analog-to-digital converter channel resistor control. */
typedef enum
{
    NRF_SAADC_RESISTOR_DISABLED = SAADC_CH_CONFIG_RESP_Bypass,   ///< Bypass resistor ladder.
    NRF_SAADC_RESISTOR_PULLDOWN = SAADC_CH_CONFIG_RESP_Pulldown, ///< Pull-down to GND.
    NRF_SAADC_RESISTOR_PULLUP   = SAADC_CH_CONFIG_RESP_Pullup,   ///< Pull-up to VDD.
    NRF_SAADC_RESISTOR_VDD1_2   = SAADC_CH_CONFIG_RESP_VDD1_2    ///< Set input at VDD/2.
} nrf_saadc_resistor_t;

/** @brief Gain factor of the analog-to-digital converter input. */
typedef enum
{
    NRF_SAADC_GAIN1_6 = SAADC_CH_CONFIG_GAIN_Gain1_6, ///< Gain factor 1/6.
    NRF_SAADC_GAIN1_5 = SAADC_CH_CONFIG_GAIN_Gain1_5, ///< Gain factor 1/5.
    NRF_SAADC_GAIN1_4 = SAADC_CH_CONFIG_GAIN_Gain1_4, ///< Gain factor 1/4.
    NRF_SAADC_GAIN1_3 = SAADC_CH_CONFIG_GAIN_Gain1_3, ///< Gain factor 1/3.
    NRF_SAADC_GAIN1_2 = SAADC_CH_CONFIG_GAIN_Gain1_2, ///< Gain factor 1/2.
    NRF_SAADC_GAIN1   = SAADC_CH_CONFIG_GAIN_Gain1,   ///< Gain factor 1.
    NRF_SAADC_GAIN2   = SAADC_CH_CONFIG_GAIN_Gain2,   ///< Gain factor 2.
    NRF_SAADC_GAIN4   = SAADC_CH_CONFIG_GAIN_Gain4,   ///< Gain factor 4.
} nrf_saadc_gain_t;

/** @brief Reference selection for the analog-to-digital converter. */
typedef enum
{
    NRF_SAADC_REFERENCE_INTERNAL = SAADC_CH_CONFIG_REFSEL_Internal, ///< Internal reference (0.6 V).
    NRF_SAADC_REFERENCE_VDD4     = SAADC_CH_CONFIG_REFSEL_VDD1_4    ///< VDD/4 as reference.
} nrf_saadc_reference_t;

/** @brief Analog-to-digital converter acquisition time. */
typedef enum
{
    NRF_SAADC_ACQTIME_3US  = SAADC_CH_CONFIG_TACQ_3us,  ///< 3 us.
    NRF_SAADC_ACQTIME_5US  = SAADC_CH_CONFIG_TACQ_5us,  ///< 5 us.
    NRF_SAADC_ACQTIME_10US = SAADC_CH_CONFIG_TACQ_10us, ///< 10 us.
    NRF_SAADC_ACQTIME_15US = SAADC_CH_CONFIG_TACQ_15us, ///< 15 us.
    NRF_SAADC_ACQTIME_20US = SAADC_CH_CONFIG_TACQ_20us, ///< 20 us.
    NRF_SAADC_ACQTIME_40US = SAADC_CH_CONFIG_TACQ_40us  ///< 40 us.
} nrf_saadc_acqtime_t;

/** @brief Analog-to-digital converter channel mode. */
typedef enum
{
    NRF_SAADC_MODE_SINGLE_ENDED = SAADC_CH_CONFIG_MODE_SE,  ///< Single-ended mode. PSELN will be ignored, negative input to ADC shorted to GND.
    NRF_SAADC_MODE_DIFFERENTIAL = SAADC_CH_CONFIG_MODE_Diff ///< Differential mode.
} nrf_saadc_mode_t;

/** @brief Analog-to-digital converter channel burst mode. */
typedef enum
{
    NRF_SAADC_BURST_DISABLED = SAADC_CH_CONFIG_BURST_Disabled, ///< Burst mode is disabled (normal operation).
    NRF_SAADC_BURST_ENABLED  = SAADC_CH_CONFIG_BURST_Enabled   ///< Burst mode is enabled. SAADC takes 2^OVERSAMPLE number of samples as fast as it can, and sends the average to Data RAM.
} nrf_saadc_burst_t;

/* Register: SAADC_CH_PSELP */
/* Description: Description cluster[0]:  Input positive pin selection for CH[0] */

/* Bits 4..0 : Analog positive input channel */
#define SAADC_CH_PSELP_PSELP_Pos (0UL) /*!< Position of PSELP field. */
#define SAADC_CH_PSELP_PSELP_Msk (0x1FUL << SAADC_CH_PSELP_PSELP_Pos) /*!< Bit mask of PSELP field. */
#define SAADC_CH_PSELP_PSELP_NC (0UL) /*!< Not connected */
#define SAADC_CH_PSELP_PSELP_AnalogInput0 (1UL) /*!< AIN0 */
#define SAADC_CH_PSELP_PSELP_AnalogInput1 (2UL) /*!< AIN1 */
#define SAADC_CH_PSELP_PSELP_AnalogInput2 (3UL) /*!< AIN2 */
#define SAADC_CH_PSELP_PSELP_AnalogInput3 (4UL) /*!< AIN3 */
#define SAADC_CH_PSELP_PSELP_AnalogInput4 (5UL) /*!< AIN4 */
#define SAADC_CH_PSELP_PSELP_AnalogInput5 (6UL) /*!< AIN5 */
#define SAADC_CH_PSELP_PSELP_AnalogInput6 (7UL) /*!< AIN6 */
#define SAADC_CH_PSELP_PSELP_AnalogInput7 (8UL) /*!< AIN7 */
#define SAADC_CH_PSELP_PSELP_VDD (9UL) /*!< VDD */

/** @brief Input selection for the analog-to-digital converter. */
typedef enum
{
    NRF_SAADC_INPUT_DISABLED = SAADC_CH_PSELP_PSELP_NC,           ///< Not connected.
    NRF_SAADC_INPUT_AIN0     = SAADC_CH_PSELP_PSELP_AnalogInput0, ///< Analog input 0 (AIN0).
    NRF_SAADC_INPUT_AIN1     = SAADC_CH_PSELP_PSELP_AnalogInput1, ///< Analog input 1 (AIN1).
    NRF_SAADC_INPUT_AIN2     = SAADC_CH_PSELP_PSELP_AnalogInput2, ///< Analog input 2 (AIN2).
    NRF_SAADC_INPUT_AIN3     = SAADC_CH_PSELP_PSELP_AnalogInput3, ///< Analog input 3 (AIN3).
    NRF_SAADC_INPUT_AIN4     = SAADC_CH_PSELP_PSELP_AnalogInput4, ///< Analog input 4 (AIN4).
    NRF_SAADC_INPUT_AIN5     = SAADC_CH_PSELP_PSELP_AnalogInput5, ///< Analog input 5 (AIN5).
    NRF_SAADC_INPUT_AIN6     = SAADC_CH_PSELP_PSELP_AnalogInput6, ///< Analog input 6 (AIN6).
    NRF_SAADC_INPUT_AIN7     = SAADC_CH_PSELP_PSELP_AnalogInput7, ///< Analog input 7 (AIN7).
    NRF_SAADC_INPUT_VDD      = SAADC_CH_PSELP_PSELP_VDD,          ///< VDD as input.
#if defined(SAADC_CH_PSELP_PSELP_VDDHDIV5) || defined(__NRFX_DOXYGEN__)
    NRF_SAADC_INPUT_VDDHDIV5 = SAADC_CH_PSELP_PSELP_VDDHDIV5      ///< VDDH/5 as input.
#endif
} nrf_saadc_input_t;

/** @brief Analog-to-digital converter channel configuration structure. */
typedef struct
{
    nrf_saadc_resistor_t  resistor_p; ///< Resistor value on positive input.
    nrf_saadc_resistor_t  resistor_n; ///< Resistor value on negative input.
    nrf_saadc_gain_t      gain;       ///< Gain control value.
    nrf_saadc_reference_t reference;  ///< Reference control value.
    nrf_saadc_acqtime_t   acq_time;   ///< Acquisition time.
    nrf_saadc_mode_t      mode;       ///< SAADC mode. Single-ended or differential.
    nrf_saadc_burst_t     burst;      ///< Burst mode configuration.
    nrf_saadc_input_t     pin_p;      ///< Input positive pin selection.
    nrf_saadc_input_t     pin_n;      ///< Input negative pin selection.
} nrf_saadc_channel_config_t;


/* Register: SAADC_RESOLUTION */
/* Description: Resolution configuration */

/* Bits 2..0 : Set the resolution */
#define SAADC_RESOLUTION_VAL_Pos (0UL) /*!< Position of VAL field. */
#define SAADC_RESOLUTION_VAL_Msk (0x7UL << SAADC_RESOLUTION_VAL_Pos) /*!< Bit mask of VAL field. */
#define SAADC_RESOLUTION_VAL_8bit (0UL) /*!< 8 bit */
#define SAADC_RESOLUTION_VAL_10bit (1UL) /*!< 10 bit */
#define SAADC_RESOLUTION_VAL_12bit (2UL) /*!< 12 bit */
#define SAADC_RESOLUTION_VAL_14bit (3UL) /*!< 14 bit */

typedef enum
{
    NRF_SAADC_RESOLUTION_8BIT  = SAADC_RESOLUTION_VAL_8bit,  ///< 8 bit resolution.
    NRF_SAADC_RESOLUTION_10BIT = SAADC_RESOLUTION_VAL_10bit, ///< 10 bit resolution.
    NRF_SAADC_RESOLUTION_12BIT = SAADC_RESOLUTION_VAL_12bit, ///< 12 bit resolution.
    NRF_SAADC_RESOLUTION_14BIT = SAADC_RESOLUTION_VAL_14bit  ///< 14 bit resolution.
} nrf_saadc_resolution_t;

/* Register: SAADC_OVERSAMPLE */
/* Description: Oversampling configuration. OVERSAMPLE should not be combined with SCAN. The RESOLUTION is applied before averaging, thus for high OVERSAMPLE a higher RESOLUTION should be used. */

/* Bits 3..0 : Oversample control */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Pos (0UL) /*!< Position of OVERSAMPLE field. */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Msk (0xFUL << SAADC_OVERSAMPLE_OVERSAMPLE_Pos) /*!< Bit mask of OVERSAMPLE field. */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Bypass (0UL) /*!< Bypass oversampling */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over2x (1UL) /*!< Oversample 2x */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over4x (2UL) /*!< Oversample 4x */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over8x (3UL) /*!< Oversample 8x */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over16x (4UL) /*!< Oversample 16x */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over32x (5UL) /*!< Oversample 32x */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over64x (6UL) /*!< Oversample 64x */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over128x (7UL) /*!< Oversample 128x */
#define SAADC_OVERSAMPLE_OVERSAMPLE_Over256x (8UL) /*!< Oversample 256x */


/** @brief Analog-to-digital converter oversampling mode. */
typedef enum
{
    NRF_SAADC_OVERSAMPLE_DISABLED = SAADC_OVERSAMPLE_OVERSAMPLE_Bypass,   ///< No oversampling.
    NRF_SAADC_OVERSAMPLE_2X       = SAADC_OVERSAMPLE_OVERSAMPLE_Over2x,   ///< Oversample 2x.
    NRF_SAADC_OVERSAMPLE_4X       = SAADC_OVERSAMPLE_OVERSAMPLE_Over4x,   ///< Oversample 4x.
    NRF_SAADC_OVERSAMPLE_8X       = SAADC_OVERSAMPLE_OVERSAMPLE_Over8x,   ///< Oversample 8x.
    NRF_SAADC_OVERSAMPLE_16X      = SAADC_OVERSAMPLE_OVERSAMPLE_Over16x,  ///< Oversample 16x.
    NRF_SAADC_OVERSAMPLE_32X      = SAADC_OVERSAMPLE_OVERSAMPLE_Over32x,  ///< Oversample 32x.
    NRF_SAADC_OVERSAMPLE_64X      = SAADC_OVERSAMPLE_OVERSAMPLE_Over64x,  ///< Oversample 64x.
    NRF_SAADC_OVERSAMPLE_128X     = SAADC_OVERSAMPLE_OVERSAMPLE_Over128x, ///< Oversample 128x.
    NRF_SAADC_OVERSAMPLE_256X     = SAADC_OVERSAMPLE_OVERSAMPLE_Over256x  ///< Oversample 256x.
} nrf_saadc_oversample_t;


typedef struct
{
    nrf_saadc_resolution_t resolution;         ///< Resolution configuration.
    nrf_saadc_oversample_t oversample;         ///< Oversampling configuration.
    uint8_t                interrupt_priority; ///< Interrupt priority.
    bool                   low_power_mode;     ///< Indicates if low power mode is active.
} nrf_drv_saadc_config_t;


#endif