#include "stdint.h"

#define RCC_BASE       0x40021000
#define PORTA_BASE     0x40010800

#define RCC_APB2ENR		 *((volatile uint32_t *) (RCC_BASE + 0x18))
#define RCC_CFGR				*((volatile uint32_t *) (RCC_BASE + 0x04))

#define GPIOA_CRH		   *((volatile uint32_t *) (PORTA_BASE + 0x04))
#define GPIOA_ODR		   *((volatile uint32_t *) (PORTA_BASE + 0x0c))

#define RCC_IOPAEN      (1<<2)

typedef union
{

  struct
  {
    volatile unsigned int reserved:13;
    volatile unsigned int bit13:1;

  } bits;

  volatile unsigned int TotValU;

} RegODR_t;

volatile RegODR_t* RegODR = (volatile RegODR_t*)(PORTA_BASE + 0x0c);

int main(void)
{
  RCC_APB2ENR |= RCC_IOPAEN;
	RCC_CFGR |= (0b100 << 8); /// for APB1 to be at 4 MHz, prs = 2, CLK = 8 MHz.
	RCC_CFGR |= (0b101 << 11); /// for APB2 to be at 2 MHz, prs = 4, CLK = 8 MHz.
	
  GPIOA_CRH   &= 0xFF0FFFFF;
  GPIOA_CRH   |= 0x00200000;

    while(1)
    {
      RegODR->bits.bit13 ^= 1;
      for(volatile int i=0; i<100; i++);
    }

	return 0;
}
