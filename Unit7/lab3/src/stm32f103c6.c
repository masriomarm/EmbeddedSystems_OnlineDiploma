/// Author: Omar Elmasri
#include "inc/stm32f103c6_GPIO.h"
/**
 * \brief Initialize GPIOx PINy according to PinConfgi parameters.
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] PinConfig, pointer to config structure.
 */

void MCAL_GPIO_init(GPIO_Typedef *GPIOx, GPIO_PinConfig_t *PinConfig) {
  uint16_t pin    = PinConfig->GPIO_Pin;
  uint16_t mode   = PinConfig->GPIO_Mode;
  uint16_t speed  = PinConfig->GPIO_SPEED;
  uint16_t pinpos = 0;

  uint32_t *configreg = NULL;

  if (pin <= GPIO_Pin_7 && pin >= GPIO_Pin_0) { /// CRL
    pinpos    = pin * 4;
    configreg = &GPIOx->CRL;
  } else if (PinConfig->GPIO_Pin <= GPIO_Pin_15 &&
             PinConfig->GPIO_Pin >= GPIO_Pin_8) { /// CRH
    pinpos    = (pin - 8) * 4;
    configreg = &GPIOx->CRH;
  } else {
    return;
  }

  /// check pin direction
  if (mode <= GPIO_MODE_IN_PD /* 3 */ &&
      mode >= GPIO_MODE_Analog /* 0 */) { /// if input
    /// clear corresponding MODE in CRL
    (*configreg) &= ~(11 << (pinpos));
    /// write to corresponding CNF according to mode
    switch (mode) {
      case GPIO_MODE_Analog:
        (*configreg) &= ~(11 << (pinpos + 2));
        break;
      case GPIO_MODE_IN_Float:
        (*configreg) &= ~(11 << (pinpos + 2));
        (*configreg) |= (1 << (pinpos + 2));
        break;
      case GPIO_MODE_IN_PD:
        (*configreg) |= (11 << (pinpos + 2));
        (*configreg) &= ~(1 << (pinpos + 2));
        GPIOx->ODR &= ~(1 << pin);
        break;
      case GPIO_MODE_IN_PU:
        (*configreg) |= (11 << (pinpos + 2));
        (*configreg) &= ~(1 << (pinpos + 2));
        GPIOx->ODR |= (1 << pin);
        break;
      default:
        break;
    }
  } else if (mode <= GPIO_MODE_OUT_AF_OD &&
             mode >= GPIO_MODE_OUT_PP) { /// if output
    switch (speed) {                     /// write to CNF accordingly
      case GPIO_SPEED_50M:
        (*configreg) |= (11 << pinpos);
        break;
      case GPIO_SPEED_2M:
        (*configreg) |= (11 << pinpos);
        (*configreg) &= ~(1 << pinpos);
        break;
      case GPIO_SPEED_10M:
        (*configreg) &= ~(11 << pinpos);
        (*configreg) |= (1 << pinpos);
        break;
      default:
        break;
    }
    switch (mode) { /// write to CNF accordingly
      case GPIO_MODE_OUT_AF_OD:
        (*configreg) |= (11 << (pinpos + 2));
        break;
      case GPIO_MODE_OUT_AF_PP:
        (*configreg) |= (11 << (pinpos + 2));
        (*configreg) &= ~(1 << (pinpos + 2));
        break;
      case GPIO_MODE_OUT_OD:
        (*configreg) &= ~(11 << (pinpos + 2));
        (*configreg) |= (1 << (pinpos + 2));
        break;
      case GPIO_MODE_OUT_PP:
        (*configreg) &= ~(11 << (pinpos + 2));
        break;
      default:
        break;
    }
  } else {
    return;
  }
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
