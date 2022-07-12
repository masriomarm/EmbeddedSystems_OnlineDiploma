#ifndef STM32F103C6_H_
#define STM32F103C6_H_
/*
this a tempelate file intended for C,Cpp files
it utilize autocommand and temeplate files in
author: Omar Elmasri
*/
/// dummy delay function
void _delay_ms(int);
void _delay_us(int);
/******************************************************************************
                                    Includes
******************************************************************************/

#include "stdint.h"
#include "stdlib.h"

/******************************************************************************
                             Memory base addresses
******************************************************************************/

#define FLASH_BASE       0x08000000
#define SYSTEM_BASE      0x1FFFF000
#define SRAM_BASE        0x20000000
#define PERIPHERALS_BASE 0x40000000

#define CORTEX_M3_INTERNAL_BASE 0xE0000000

#define NVIC_BASE  0xE000E100
#define NVIC_ISER0 (*((volatile uint32_t *)(NVIC_BASE + 0x000)))
#define NVIC_ISER1 (*((volatile uint32_t *)(NVIC_BASE + 0x004)))
#define NVIC_ICER0 (*((volatile uint32_t *)(NVIC_BASE + 0x080)))
#define NVIC_ICER1 (*((volatile uint32_t *)(NVIC_BASE + 0x084)))

/******************************************************************************
                           Peripherals base addresses
******************************************************************************/

/*
                                    AHB BUS
*/

#define RCC_BASE 0x40021000

/*
                                    APB1 BUS
*/

/*
                                    APB2 BUS
*/

/// GPIOx
#define GPIOA_BASE 0x40010800
#define GPIOB_BASE 0x40010C00
#define GPIOC_BASE 0x40011000
#define GPIOD_BASE 0x40011400
#define GPIOE_BASE 0x40011800

/// EXTI
#define EXTI_BASE 0x40010400
/// AFIO
#define AFIO_BASE 0x40010000

/******************************************************************************
                         Peripherals Registers typedef
******************************************************************************/

/*
                              IRQ CallBack typedef
*/

typedef void(*IRQ_CallBack)(void);

/*
                                 GPIOx Register
*/
typedef struct {
  uint32_t CRL;
  uint32_t CRH;
  uint32_t IDR;
  uint32_t ODR;
  uint32_t BSRR;
  uint32_t BRR;
  uint32_t LCKR;
} GPIO_Typedef;

/*
                                  RCC Register
*/
typedef struct {
  uint32_t CR;
  uint32_t CFGR;
  uint32_t CIR;
  uint32_t APB2RSTR;
  uint32_t APB1RSTR;
  uint32_t AHBENR;
  uint32_t APB2ENR;
  uint32_t APB1ENR;
  uint32_t BDCR;
  uint32_t CSR;
  uint32_t AHBSTR;
  uint32_t CFGR2;
} RCC_Typedef;

/*
                                 EXTI Register
*/
typedef struct {
  uint32_t IMR;
  uint32_t EMR;
  uint32_t RTSR;
  uint32_t FTSR;
  uint32_t SWIER;
  uint32_t PR;
} EXTI_Typedef;

/*
                                 AFIO Register
*/
typedef struct {
  uint32_t EVCR;
  uint32_t MAPR;
  uint32_t EXTICR[4];
  uint32_t offset_reserved0;
  uint32_t MAPR2;
} AFIO_Typedef;

/******************************************************************************
                              Peripherals instants
******************************************************************************/

#define GPIOA ((GPIO_Typedef *)(GPIOA_BASE))
#define GPIOB ((GPIO_Typedef *)(GPIOB_BASE))
#define GPIOC ((GPIO_Typedef *)(GPIOC_BASE))
#define GPIOD ((GPIO_Typedef *)(GPIOD_BASE))
#define GPIOE ((GPIO_Typedef *)(GPIOE_BASE))

#define RCC ((RCC_Typedef *)(RCC_BASE))

#define EXTI ((EXTI_Typedef *)(EXTI_BASE))

#define AFIO ((AFIO_Typedef *)(AFIO_BASE))

/******************************************************************************
                               Macro definitoins
******************************************************************************/

/*
                                 Generic Macros
*/
#define SET_BIT(reg, bit) ((reg) |= 1 << (bit))
#define TGL_BIT(reg, bit) ((reg) ^= 1 << (bit))
#define CLR_BIT(reg, bit) ((reg) &= ~(1 << (bit)))
#define RDD_BIT(reg, bit) ((reg) & (1 << (bit)))

/*
                                  Clock enable
*/
#define CLK_EN_GPIOA ((RCC)->APB2ENR |= 1 << 2)
#define CLK_EN_GPIOB ((RCC)->APB2ENR |= 1 << 3)
#define CLK_EN_GPIOC ((RCC)->APB2ENR |= 1 << 4)
#define CLK_EN_GPIOD ((RCC)->APB2ENR |= 1 << 5)
#define CLK_EN_GPIOE ((RCC)->APB2ENR |= 1 << 6)

#define CLK_EN_AFIO ((RCC)->APB2ENR |= 1 << 0)

/*
                                      IVT
*/
// EXTI
#define EXTI0_IRQ  6
#define EXTI1_IRQ  7
#define EXTI2_IRQ  8
#define EXTI3_IRQ  9
#define EXTI4_IRQ  10
#define EXTI5_IRQ  23
#define EXTI6_IRQ  23
#define EXTI7_IRQ  23
#define EXTI8_IRQ  23
#define EXTI9_IRQ  23
#define EXTI10_IRQ 40
#define EXTI11_IRQ 40
#define EXTI12_IRQ 40
#define EXTI13_IRQ 40
#define EXTI14_IRQ 40
#define EXTI15_IRQ 40

/*
                         NVIC IRQ Enable/Disable macro
*/

#define NVIC_IRQ6_EXTI0_Enable      ((NVIC_ISER0) |= (1 << 6))
#define NVIC_IRQ7_EXTI1_Enable      ((NVIC_ISER0) |= (1 << 7))
#define NVIC_IRQ8_EXTI2_Enable      ((NVIC_ISER0) |= (1 << 8))
#define NVIC_IRQ9_EXTI3_Enable      ((NVIC_ISER0) |= (1 << 9))
#define NVIC_IRQ10_EXTI4_Enable     ((NVIC_ISER0) |= (1 << 10))
#define NVIC_IRQ23_EXTI5_9_Enable   ((NVIC_ISER0) |= (1 << 23))
#define NVIC_IRQ40_EXTI10_15_Enable ((NVIC_ISER1) |= (1 << 8))

#define NVIC_IRQ6_EXTI0_Disable      ((NVIC_ICER0) |= (1 << 6))
#define NVIC_IRQ7_EXTI1_Disable      ((NVIC_ICER0) |= (1 << 7))
#define NVIC_IRQ8_EXTI2_Disable      ((NVIC_ICER0) |= (1 << 8))
#define NVIC_IRQ9_EXTI3_Disable      ((NVIC_ICER0) |= (1 << 9))
#define NVIC_IRQ10_EXTI4_Disable     ((NVIC_ICER0) |= (1 << 10))
#define NVIC_IRQ23_EXTI5_9_Disable   ((NVIC_ICER0) |= (1 << 23))
#define NVIC_IRQ40_EXTI10_15_Disable ((NVIC_ICER1) |= (1 << 8))

#endif /* ifndef STM32F103C6_H_ */
