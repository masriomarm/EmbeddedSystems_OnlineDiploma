#include "stdint.h"

void CLK_init(void);
void GPIO_init(void);

#define RCC_BASE      0x40021000
#define PORTA_BASE    0x40010800
#define AFIO_BASE     0x40010000
#define EXTI_BASE     0x40010400

#define NVIC_EXTI0  *((volatile uint32_t *)(0xE000E100))

#define AFIO_EXTICR1  *((volatile uint32_t *)(AFIO_BASE + 0x08))

#define EXTI_IMR      *((volatile uint32_t *)(EXTI_BASE + 0x00))
#define EXTI_RTSR     *((volatile uint32_t *)(EXTI_BASE + 0x08))
#define EXTI_SWIER    *((volatile uint32_t *)(EXTI_BASE + 0x10))
#define EXTI_PR       *((volatile uint32_t *)(EXTI_BASE + 0x14))

#define RCC_CR        *((volatile uint32_t *)(RCC_BASE + 0x00))
#define RCC_APB2ENR   *((volatile uint32_t *)(RCC_BASE + 0x18))
#define RCC_CFGR      *((volatile uint32_t *)(RCC_BASE + 0x04))

#define GPIOA_CRL     *((volatile uint32_t *)(PORTA_BASE + 0x00))
#define GPIOA_CRH     *((volatile uint32_t *)(PORTA_BASE + 0x04))
#define GPIOA_ODR     *((volatile uint32_t *)(PORTA_BASE + 0x0c))

#define SET_BIT(x, y) ((x) |= (1 << (y)))
#define TGL_BIT(x, y) ((x) ^= (1 << (y)))
#define CLR_BIT(x, y) ((x) &= ~(1 << (y)))

int main(void) {

  CLK_init();
  GPIO_init();

  while (1);
  return 0;
}

void CLK_init(void) {
  SET_BIT(RCC_APB2ENR, 0);   /// enable AFIO clk
  SET_BIT(RCC_APB2ENR, 2);   /// enable IOPA clk
  RCC_CFGR |= (0b100 << 8);  /// for APB1 to be at 4 MHz, prs = 2, CLK = 8 MHz.
  RCC_CFGR |= (0b101 << 11); /// for APB2 to be at 2 MHz, prs = 4, CLK = 8 MHz.

  RCC_CFGR |= (0b0110 << 18); /// PLL Mult x8.
  SET_BIT(RCC_CR, 24);        /// enable PLL clk.
  RCC_CFGR |= (0b10 << 0);    /// set system clk switch for PLL.

  return;
}

void GPIO_init(void) {
  /// TODO: assign PA0 as external interrupt to toggle PA13

  /// note: for PA0
  /// [d]: PA0 set to floating input
  GPIOA_CRL |= (0b0100 << 0); /// set PA0 to input, floating.
  /// [d]: set EXTI0 to PA0
  AFIO_EXTICR1 |= (0b0000 << 0);
  /// [d]: set trigger detection
  SET_BIT(EXTI_RTSR, 0);
  /// [d]: disable EXTI0 SW interrupt
  CLR_BIT(EXTI_SWIER, 0);
  /// [d]: set EXTI0 mask
  SET_BIT(EXTI_IMR,0);
  /// []: set EXTI0 NVIC mask
  SET_BIT(NVIC_EXTI0, 6);
  /// note: for PA13
  /// [d]: PA13 set output, push/pull
  GPIOA_CRH &= 0xFF0FFFFF;
  GPIOA_CRH |= 0x00200000;
}

void EXTI0_IRQHandler(void) {
  TGL_BIT(GPIOA_ODR, 13);
  SET_BIT(EXTI_PR, 0);
}
