/// Author: Omar Elmasri
#include "inc/stm32f103c6.h"
#include "inc/stm32f103c6_EXTI.h"
#include "inc/stm32f103c6_GPIO.h"

/*
                               Static Functions
*/

void _delay_ms(int a)
{
  for (volatile int i = 0; i < a; ++i)
  {
    for (volatile int i = 0; i < 1000; ++i) {}
  }
}
void _delay_us(int a)
{
  for (volatile int i = 0; i < a; ++i) {}
}

void static enable_NVIC(uint16_t LineNumber)
{
  switch (LineNumber)
  {
    case 0:
      NVIC_IRQ6_EXTI0_Enable;
      break;
    case 1:
      NVIC_IRQ7_EXTI1_Enable;
      break;
    case 2:
      NVIC_IRQ8_EXTI2_Enable;
      break;
    case 3:
      NVIC_IRQ9_EXTI3_Enable;
      break;
    case 4:
      NVIC_IRQ10_EXTI4_Enable;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      NVIC_IRQ23_EXTI5_9_Enable;
      break;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      NVIC_IRQ40_EXTI10_15_Enable;
      break;
    default:
      break;
  }
}

void static disable_NVIC(uint16_t LineNumber)
{
  switch (LineNumber)
  {
    case 0:
      NVIC_IRQ6_EXTI0_Disable;
      break;
    case 1:
      NVIC_IRQ7_EXTI1_Disable;
      break;
    case 2:
      NVIC_IRQ8_EXTI2_Disable;
      break;
    case 3:
      NVIC_IRQ9_EXTI3_Disable;
      break;
    case 4:
      NVIC_IRQ10_EXTI4_Disable;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      NVIC_IRQ23_EXTI5_9_Disable;
      break;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      NVIC_IRQ40_EXTI10_15_Disable;
      break;
    default:
      break;
  }
}
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

/*
                                   GPIO APIs
*/

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

/*
                                IRQ EXTI Vector
*/

IRQ_CallBack IRQ_EXTI_handler[15] = {NULL};

/*
                               IRQ EXTI Handlers
*/

void EXTI0_IRQHandler(void)
{
  IRQ_EXTI_handler[0]();
  EXTI->PR |= (1 << 0);
}
void EXTI1_IRQHandler(void)
{
  IRQ_EXTI_handler[1]();
  EXTI->PR |= (1 << 1);
}
void EXTI2_IRQHandler(void)
{
  IRQ_EXTI_handler[2]();
  EXTI->PR |= (1 << 2);
}
void EXTI3_IRQHandler(void)
{
  IRQ_EXTI_handler[3]();
  EXTI->PR |= (1 << 3);
}
void EXTI4_IRQHandler(void)
{
  IRQ_EXTI_handler[4]();
  EXTI->PR |= (1 << 4);
}
void EXTI9_5_IRQHandler(void)
{
  if (EXTI->PR & (1 << 5))
  {
    IRQ_EXTI_handler[5]();
    EXTI->PR |= (1 << 5);
  }
  if (EXTI->PR & (1 << 6))
  {
    IRQ_EXTI_handler[6]();
    EXTI->PR |= (1 << 6);
  }
  if (EXTI->PR & (1 << 7))
  {
    IRQ_EXTI_handler[7]();
    EXTI->PR |= (1 << 7);
  }
  if (EXTI->PR & (1 << 8))
  {
    IRQ_EXTI_handler[8]();
    EXTI->PR |= (1 << 8);
  }
  if (EXTI->PR & (1 << 9))
  {
    IRQ_EXTI_handler[9]();
    EXTI->PR |= (1 << 9);
  }
}
void EXTI15_10_IRQHandler(void)
{
  if (EXTI->PR & (1 << 10))
  {
    IRQ_EXTI_handler[10]();
    EXTI->PR |= (1 << 10);
  }
  if (EXTI->PR & (1 << 11))
  {
    IRQ_EXTI_handler[11]();
    EXTI->PR |= (1 << 11);
  }
  if (EXTI->PR & (1 << 12))
  {
    IRQ_EXTI_handler[12]();
    EXTI->PR |= (1 << 12);
  }
  if (EXTI->PR & (1 << 13))
  {
    IRQ_EXTI_handler[13]();
    EXTI->PR |= (1 << 13);
  }
  if (EXTI->PR & (1 << 14))
  {
    IRQ_EXTI_handler[14]();
    EXTI->PR |= (1 << 14);
  }
  if (EXTI->PR & (1 << 15))
  {
    IRQ_EXTI_handler[15]();
    EXTI->PR |= (1 << 15);
  }
}

/*
                                   EXTI APIs
*/

/**
 * \brief Reset EXTernal Interrup registers & NVIC IRQ mask
 * \retval None
 */
void MCAL_EXTI_GPIO_DeInit(void)
{

  /// EXTI reset values;
  EXTI->IMR   = 0x00000000;
  EXTI->EMR   = 0x00000000;
  EXTI->RTSR  = 0x00000000;
  EXTI->FTSR  = 0x00000000;
  EXTI->SWIER = 0x00000000;
  EXTI->PR    = 0xFFFFFFFF;

  NVIC_IRQ6_EXTI0_Disable;
  NVIC_IRQ7_EXTI1_Disable;
  NVIC_IRQ8_EXTI2_Disable;
  NVIC_IRQ9_EXTI3_Disable;
  NVIC_IRQ10_EXTI4_Disable;
  NVIC_IRQ23_EXTI5_9_Disable;
  NVIC_IRQ40_EXTI10_15_Disable;
}

/**
 * \brief Init EXTernal Interrupt.
 * \param [in] EXTI_Config
 * \retval None
 */

void MCAL_EXTI_GPIO_Init(EXTI_PinConfig_t *EXTI_Config)
{
  MCAL_EXTI_GPIO_Update(EXTI_Config);
}

/**
 * \brief Update EXTernal Interrupt config.
 * \param [in] EXTI_Config
 * \retval None
 */

void MCAL_EXTI_GPIO_Update(EXTI_PinConfig_t *EXTI_Config)
{
  /// Configure GPIO to be Floating input
  /// Update AFIO to route EXTI to GPIO port
  /// Update Edge detection
  /// Update IRQ Handling CallBack
  /// Enable/Disable IRQ

  /// Configure GPIO to be Floating input
  {
    GPIO_PinConfig_t temp = {.GPIO_Port = EXTI_Config->EXTI_Line.GPIO_Port,
                             .GPIO_Pin  = EXTI_Config->EXTI_Line.GPIO_Pin,
                             .GPIO_Mode = GPIO_MODE_IN_Float};
    MCAL_GPIO_init(temp.GPIO_Port, &temp);
  }

  /// Update AFIO to route EXTI to GPIO port
  uint8_t AFIO_EXTICR_index = EXTI_Config->EXTI_Line.EXTI_InputLineNumber / 4;
  uint8_t AFIO_EXTICR_pos =
      (EXTI_Config->EXTI_Line.EXTI_InputLineNumber % 4) * 4;
  AFIO->EXTICR[AFIO_EXTICR_index] &=
      ~(0xF << (AFIO_EXTICR_pos)); /// reset corresponding bits
  AFIO->EXTICR[AFIO_EXTICR_index] |=
      ((AFIO_GPIO_EXTI_map(EXTI_Config->EXTI_Line.GPIO_Port))
       << AFIO_EXTICR_pos); /// set the corresponding port value

  /// Update Edge detection
  /// reset edge and update
  EXTI->RTSR &= ~(1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
  EXTI->FTSR &= ~(1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
  if (EXTI_Config->EXTI_TriggerEdge == EXTI_Trigger_Rising)
  {
    EXTI->RTSR |= (1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
  }
  else if (EXTI_Config->EXTI_TriggerEdge == EXTI_Trigger_Falling)
  {
    EXTI->FTSR |= (1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
  }
  else if (EXTI_Config->EXTI_TriggerEdge == EXTI_Trigger_Both)
  {
    EXTI->RTSR |= (1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
    EXTI->FTSR |= (1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
  }

  /// Update IRQ Handling CallBack
  IRQ_EXTI_handler[EXTI_Config->EXTI_Line.EXTI_InputLineNumber] =
      EXTI_Config->EXTI_CallBack;

  /// Enable/Disable IRQ mask & NVIC mask
  if (EXTI_Config->IRQ_EN == EXTI_IRQ_Enable)
  {
    EXTI->IMR |= (1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
    enable_NVIC(EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
  }
  else if (EXTI_Config->IRQ_EN == EXTI_IRQ_Disable)
  {
    EXTI->IMR &= ~(1 << EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
    disable_NVIC(EXTI_Config->EXTI_Line.EXTI_InputLineNumber);
  }
}
