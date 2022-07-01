#include "inc/stm32f103c6.h"
#include "inc/stm32f103c6_GPIO.h"

void CLK_init(void);
void GPIO_init(void);

#define RCC_BASE   0x40021000
#define PORTA_BASE 0x40010800
#define PORTB_BASE 0x40010C00
#define AFIO_BASE  0x40010000
#define EXTI_BASE  0x40010400

#define NVIC_EXTI0 *((volatile uint32_t *)(0xE000E100))

#define AFIO_EXTICR1 *((volatile uint32_t *)(AFIO_BASE + 0x08))

#define EXTI_IMR   *((volatile uint32_t *)(EXTI_BASE + 0x00))
#define EXTI_RTSR  *((volatile uint32_t *)(EXTI_BASE + 0x08))
#define EXTI_SWIER *((volatile uint32_t *)(EXTI_BASE + 0x10))
#define EXTI_PR    *((volatile uint32_t *)(EXTI_BASE + 0x14))

#define RCC_CR      *((volatile uint32_t *)(RCC_BASE + 0x00))
#define RCC_APB2ENR *((volatile uint32_t *)(RCC_BASE + 0x18))
#define RCC_CFGR    *((volatile uint32_t *)(RCC_BASE + 0x04))

//#define GPIOA_CRL *((volatile uint32_t *)(PORTA_BASE + 0x00))
//#define GPIOA_CRH *((volatile uint32_t *)(PORTA_BASE + 0x04))
//#define GPIOA_ODR *((volatile uint32_t *)(PORTA_BASE + 0x0c))
//#define GPIOA_IDR *((volatile uint32_t *)(PORTA_BASE + 0x08))
//
//#define GPIOB_CRL *((volatile uint32_t *)(PORTB_BASE + 0x00))
//#define GPIOB_CRH *((volatile uint32_t *)(PORTB_BASE + 0x04))
//#define GPIOB_ODR *((volatile uint32_t *)(PORTB_BASE + 0x0c))
//#define GPIOB_IDR *((volatile uint32_t *)(PORTB_BASE + 0x08))

int main(void)
{

  CLK_init();
  GPIO_init();

  while (1)
  {
    /// read PA1
    //    if (((GPIOA_IDR & (1 << 1)) >> 1) == 0) /// PA1 pressed, ref to
    //    HW.
    if (MCAL_GPIO_read_pin(GPIOA, GPIO_Pin_1) == 0) /// PA1 pressed, ref to HW.
    {
      //      GPIOB_ODR ^= 1 << 1;
      MCAL_GPIO_toggle_pin(GPIOB, GPIO_Pin_1);
      while (MCAL_GPIO_read_pin(GPIOA, GPIO_Pin_1) == 0)
        ; /// single press.
      // note: consider a flag instead of polling
    }

    /// read PA13
    //    if (((GPIOA_IDR & (1 << 1)) >> 1) == 1) /// PA1 pressed, ref to HW.
    if ((MCAL_GPIO_read_pin(GPIOA, GPIO_Pin_13)) == 1)
    {
      //      GPIOB_ODR ^= 1 << 13; /// multi pressing
      MCAL_GPIO_toggle_pin(GPIOB, GPIO_Pin_13);
    }
  }

  return 0;
}

void CLK_init(void)
{
  SET_BIT(RCC_APB2ENR, 0); /// enable AFIO clk
  SET_BIT(RCC_APB2ENR, 2); /// enable IOPA clk
  SET_BIT(RCC_APB2ENR, 3); /// enable IOPB clk

  RCC_CFGR |= (0b100 << 8);  /// for APB1 to be at 4 MHz, prs = 2, CLK = 8 MHz.
  RCC_CFGR |= (0b101 << 11); /// for APB2 to be at 2 MHz, prs = 4, CLK = 8 MHz.

  RCC_CFGR |= (0b0110 << 18); /// PLL Mult x8.
  SET_BIT(RCC_CR, 24);        /// enable PLL clk.
  RCC_CFGR |= (0b10 << 0);    /// set system clk switch for PLL.

  return;
}

void GPIO_init(void)
{
  /// TODO: assign PA1,PA13 as floating input to toggle PB1, PB13 respectively

  /// PA1 input floating, by defualt, reset state.
  {
    GPIO_PinConfig_t temp_config = {.GPIO_Pin  = GPIO_Pin_1,
                                    .GPIO_Port = GPIOA,
                                    .GPIO_Mode = GPIO_MODE_Analog};
    MCAL_GPIO_init(temp_config.GPIO_Port, &temp_config);
  }

  /// PB1 output push-pull
  {
    GPIO_PinConfig_t temp_config = {.GPIO_Pin   = GPIO_Pin_1,
                                    .GPIO_Port  = GPIOB,
                                    .GPIO_Mode  = GPIO_MODE_OUT_PP,
                                    .GPIO_SPEED = GPIO_SPEED_10M};
    MCAL_GPIO_init(temp_config.GPIO_Port, &temp_config);
  }
  //  GPIOA_CRL |= 1 << 6;
  //  GPIOB_CRL |= (0b01 << 4);
  //  GPIOB_CRL &= ~(0b11 << 6);

  /// PA13 input floating, by defualt, reset state.
  {
    GPIO_PinConfig_t temp_config = {.GPIO_Pin  = GPIO_Pin_13,
                                    .GPIO_Port = GPIOA,
                                    .GPIO_Mode = GPIO_MODE_Analog};
    MCAL_GPIO_init(temp_config.GPIO_Port, &temp_config);
  }
  //  GPIOA_CRH |= (0b01 << 22);

  /// PB13 output push-pull
  {
    GPIO_PinConfig_t temp_config = {.GPIO_Pin   = GPIO_Pin_13,
                                    .GPIO_Port  = GPIOB,
                                    .GPIO_Mode  = GPIO_MODE_OUT_PP,
                                    .GPIO_SPEED = GPIO_SPEED_10M};
    MCAL_GPIO_init(temp_config.GPIO_Port, &temp_config);
  }
  //  GPIOB_CRH |= (0b01 << 20);
  //  GPIOB_CRH &= ~(0b11 << 22);
}

void EXTI0_IRQHandler(void)
{
  //  TGL_BIT(GPIOA_ODR, 13);
  MCAL_GPIO_toggle_pin(GPIOA, GPIO_Pin_13);
  SET_BIT(EXTI_PR, 0);
}
