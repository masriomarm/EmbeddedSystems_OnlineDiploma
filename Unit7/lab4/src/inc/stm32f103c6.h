#ifndef STM32F103C6_H_
#define STM32F103C6_H_
/*
this a tempelate file intended for C,Cpp files
it utilize autocommand and temeplate files in
author: Omar Elmasri
*/

/******************************************************************************
                                    Includes
******************************************************************************/

#include "stdint.h"
#include "stdlib.h"

/******************************************************************************
                             Memory base addresses
******************************************************************************/

#define FLASH_BASE              0x08000000
#define SYSTEM_BASE             0x1FFFF000
#define SRAM_BASE               0x20000000
#define PERIPHERALS_BASE        0x40000000
#define CORTEX_M3_INTERNAL_BASE 0xE0000000

/******************************************************************************
                           Peripherals base addresses
******************************************************************************/

/*
                                    AHB BUS
*/

#define RCC_BASE 0x40021000

/// GPIOx
#define GPIOA_BASE 0x40010800
#define GPIOB_BASE 0x40010C00
#define GPIOC_BASE 0x40011000
#define GPIOD_BASE 0x40011400
#define GPIOE_BASE 0x40011800
/// EXTI
#define EXTI_BASE  0x40010400
/// AFIO
#define AFIO_BASE  0x40010000

/*
                                    APB1 BUS
*/

/*
                                    APB2 BUS
*/

/******************************************************************************
                           Peripherals Registers typdef
******************************************************************************/

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
  uint32_t EXTICR1;
  uint32_t EXTICR2;
  uint32_t ECTICR3;
  uint32_t EXTICR4;
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

#endif /* ifndef STM32F103C6_H_ */
