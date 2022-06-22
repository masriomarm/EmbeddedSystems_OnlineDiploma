/// Author: Omar Elmasri
#include "inc/stm32f103c6_GPIO.h"

/**
 * \brief Initialize GPIOx PINy according to PinConfgi parameters.
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] PinConfig, pointer to config structure.
 */

void MCAL_GPIO_init(GPIO_Typedef *GPIOx, GPIO_PinConfig_t *PinConfig) {

  /// Port configuration register low (GPIO)
}

/**
 * \brief Reset GPIOx PINy.
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] PinConfig, pointer to config structure.
 */

void MCAL_GPIO_term(GPIO_Typedef *GPIOx, GPIO_PinConfig_t *PinConfig) {}

/**
 * \brief Read GIOPx PINy
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number
 * \retval Pin status @GPIO_PIN_STATE
 */

uint8_t MCAL_GPIO_read_pin(GPIO_Typedef *GPIOx, uint16_t Pin) {

  return 0;
}

/**
 * \brief Read GIOPx port
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \retval GPIOx port value
 */

uint16_t MCAL_GPIO_read_port(GPIO_Typedef *GPIOx) {

  return 0;
}

/**
 * \brief Write GIOPx PINy
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number
 * \param [in] State,refer GPIO_PIN_STATE
 */

void MCAL_GPIO_write_pin(GPIO_Typedef *GPIOx, uint16_t Pin, uint8_t State) {}

/**
 * \brief Write GIOPx
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] State,refer GPIO_PIN_STATE
 */

void MCAL_GPIO_write_port(GPIO_Typedef *GPIOx, uint16_t State) {}

/**
 * \brief Toggle GIOPx PINy
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number
 */

void MCAL_GPIO_toggle_pin(GPIO_Typedef *GPIOx, uint16_t Pin) {}

/**
 * \brief Toggle GIOPx
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 */

void MCAL_GPIO_toggle_port(GPIO_Typedef *GPIOx);

/**
 * \brief Lock GIOPx PINy configurations
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number
 * \retval Status @GPIO_RETURN_STATE
 */

uint8_t MCAL_GPIO_lock_pin(GPIO_Typedef *GPIOx, uint16_t Pin) {

  return 0;
}
