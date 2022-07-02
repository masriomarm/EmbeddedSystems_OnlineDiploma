/// Author: Omar Elmasri
#include "inc/stm32f103c6_GPIO.h"
/**
 * \brief Initialize GPIOx PINy according to PinConfgi parameters.
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] PinConfig, pointer to config structure.
 */

uint8_t static config_pos(uint16_t pin)
{
  switch (pin)
  {
    case GPIO_Pin_0:
      return 0;
      break;
    case GPIO_Pin_1:
      return 4;
      break;
    case GPIO_Pin_2:
      return 8;
      break;
    case GPIO_Pin_3:
      return 12;
      break;
    case GPIO_Pin_4:
      return 16;
      break;
    case GPIO_Pin_5:
      return 20;
      break;
    case GPIO_Pin_6:
      return 24;
      break;
    case GPIO_Pin_7:
      return 28;
      break;
    case GPIO_Pin_8:
      return 0;
      break;
    case GPIO_Pin_9:
      return 4;
      break;
    case GPIO_Pin_10:
      return 8;
      break;
    case GPIO_Pin_11:
      return 12;
      break;
    case GPIO_Pin_12:
      return 16;
      break;
    case GPIO_Pin_13:
      return 20;
      break;
    case GPIO_Pin_14:
      return 24;
      break;
    case GPIO_Pin_15:
      return 28;
      break;
  }
  return 29;
}
void MCAL_GPIO_init(GPIO_Typedef *GPIOx, GPIO_PinConfig_t *PinConfig)
{
  uint16_t pin    = PinConfig->GPIO_Pin;
  uint16_t mode   = PinConfig->GPIO_Mode;
  uint16_t speed  = PinConfig->GPIO_SPEED;
  uint16_t pinpos = 0;

  uint32_t *configreg = NULL;

  if (pin <= GPIO_Pin_7 && pin >= GPIO_Pin_0)
  { /// CRL
    pinpos    = config_pos(pin);
    configreg = &GPIOx->CRL;
  }
  else if (PinConfig->GPIO_Pin <= GPIO_Pin_15 &&
           PinConfig->GPIO_Pin >= GPIO_Pin_8)
  { /// CRH
    pinpos    = config_pos(pin);
    configreg = &GPIOx->CRH;
  }
  else
  {
    return;
  }

  /// check pin direction
  if (mode <= GPIO_MODE_IN_PD /* 3 */ && mode >= GPIO_MODE_Analog /* 0 */)
  { /// if input
    /// clear corresponding MODE in CRL
    (*configreg) &= ~(11 << (pinpos));
    /// write to corresponding CNF according to mode
    switch (mode)
    {
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
        GPIOx->ODR &= ~(pin);
        break;
      case GPIO_MODE_IN_PU:
        (*configreg) |= (11 << (pinpos + 2));
        (*configreg) &= ~(1 << (pinpos + 2));
        GPIOx->ODR |= (pin);
        break;
      default:
        break;
    }
  }
  else if (mode <= GPIO_MODE_OUT_AF_OD && mode >= GPIO_MODE_OUT_PP)
  { /// if output
    switch (speed)
    { /// write to CNF accordingly
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
    switch (mode)
    { /// write to CNF accordingly
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
  }
  else
  {
    return;
  }
}

/**
 * \brief Reset GPIOx PINy.
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] PinConfig, pointer to config structure.
 */

void MCAL_GPIO_term(GPIO_Typedef *GPIOx)
{

  if (GPIOx == GPIOA)
  {
    RCC->APB2RSTR |= (1 << 2);
    RCC->APB2RSTR &= ~(1 << 2);
  }

  else if (GPIOx == GPIOB)
  {
    RCC->APB2RSTR |= (1 << 3);
    RCC->APB2RSTR &= ~(1 << 3);
  }

  else if (GPIOx == GPIOC)
  {
    RCC->APB2RSTR |= (1 << 4);
    RCC->APB2RSTR &= ~(1 << 4);
  }

  else if (GPIOx == GPIOD)
  {
    RCC->APB2RSTR |= (1 << 5);
    RCC->APB2RSTR &= ~(1 << 5);
  }

  else if (GPIOx == GPIOE)
  {
    RCC->APB2RSTR |= (1 << 6);
    RCC->APB2RSTR &= ~(1 << 6);
  }
  else
  {
    return;
  }
}

/**
 * \brief Read GIOPx PINy
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number according to GPIO_PINS_DEFINE
 * \retval Pin status @GPIO_PIN_STATE
 */

uint8_t MCAL_GPIO_read_pin(GPIO_Typedef *GPIOx, uint16_t Pin)
{

  return ((uint8_t)(GPIOx->IDR & Pin));
}

/**
 * \brief Read GIOPx port
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \retval GPIOx port value
 */

uint16_t MCAL_GPIO_read_port(GPIO_Typedef *GPIOx)
{

  return ((uint16_t)GPIOx->IDR);
}

/**
 * \brief Write GIOPx PINy
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number according to GPIO_PINS_DEFINE
 * \param [in] State,refer GPIO_PIN_STATE
 */

void MCAL_GPIO_write_pin(GPIO_Typedef *GPIOx, uint16_t Pin, uint8_t State)
{

  if (State == GPIO_PIN_SET)
  {
    GPIOx->BSRR = (uint32_t)(Pin);
  }
  else if (State == GPIO_PIN_RESET)
  {
    GPIOx->BRR = (uint32_t)(Pin);
  }
  else
  {
    return;
  }
}

/**
 * \brief Write GIOPx
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] State,refer GPIO_PIN_STATE
 */

void MCAL_GPIO_write_port(GPIO_Typedef *GPIOx, uint16_t State)
{
  GPIOx->ODR = ((uint32_t)(State));
}

/**
 * \brief Toggle GIOPx PINy
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number according to GPIO_PINS_DEFINE
 */

void MCAL_GPIO_toggle_pin(GPIO_Typedef *GPIOx, uint16_t Pin)
{
  GPIOx->ODR ^= ((uint32_t)(Pin));
}

/**
 * \brief Toggle GIOPx
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 */

void MCAL_GPIO_toggle_port(GPIO_Typedef *GPIOx)
{
  GPIOx->ODR ^= ((uint32_t)(0xFFFF));
}

/**
 * \brief Lock GIOPx PINy configurations
 * \param [in] GPIOx, pointer to GPOIx_Typedef, where x indicates the port.
 * \param [in] Pin, indicates pin number according to GPIO_PINS_DEFINE
 * \retval Status @GPIO_RETURN_STATE
 */

uint8_t MCAL_GPIO_lock_pin(GPIO_Typedef *GPIOx, uint16_t Pin)
{
  uint8_t confirm = 0;
  GPIOx->LCKR |= (Pin);

  GPIOx->LCKR |= (1 << 16);
  GPIOx->LCKR &= ~(1 << 16);
  GPIOx->LCKR |= (1 << 16);

  if ((((GPIOx->LCKR)) & (1 << 16)) == 0)
  {
    confirm = 1;
  }
  else
  {
    return GPIO_RETURN_ERROR;
  }
  if (confirm && ((GPIOx->LCKR) & (1 << 16)))
  {
    return GPIO_RETURN_OK;
  }
  else
  {
    return GPIO_RETURN_ERROR;
  }

  return GPIO_RETURN_ERROR;
}
