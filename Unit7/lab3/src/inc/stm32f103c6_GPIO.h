#ifndef STM32F103C6_GPIO_H_
#define STM32F103C6_GPIO_H_
/// Author: Omar Elamsri
#include "stm32f103c6.h"

/*
                                Config structure
*/

typedef struct {
  uint16_t GPIO_Pin;   /// @ref GPIO_PINS_DEFINE
  uint16_t GPIO_Mode;  /// @ref GPIO_MODE_DEFINE
  uint16_t GPIO_SPEED; /// @ref GPIO_SPEED_DEFINE

} GPIO_PinConfig_t;

/******************************************************************************
                                    Defines
******************************************************************************/

/*
                                GPIO_PINS_DEFINE
*/
#define GPIO_Pin_0   ((uint16_t)0x0001)
#define GPIO_Pin_1   ((uint16_t)0x0002)
#define GPIO_Pin_2   ((uint16_t)0x0004)
#define GPIO_Pin_3   ((uint16_t)0x0008)
#define GPIO_Pin_4   ((uint16_t)0x0010)
#define GPIO_Pin_5   ((uint16_t)0x0020)
#define GPIO_Pin_6   ((uint16_t)0x0040)
#define GPIO_Pin_7   ((uint16_t)0x0080)
#define GPIO_Pin_8   ((uint16_t)0x0100)
#define GPIO_Pin_9   ((uint16_t)0x0200)
#define GPIO_Pin_10  ((uint16_t)0x0400)
#define GPIO_Pin_11  ((uint16_t)0x0800)
#define GPIO_Pin_12  ((uint16_t)0x1000)
#define GPIO_Pin_13  ((uint16_t)0x2000)
#define GPIO_Pin_14  ((uint16_t)0x4000)
#define GPIO_Pin_15  ((uint16_t)0x8000)
#define GPIO_Pin_All ((uint16_t)0xFFFF)

/*
                                GPIO_Mode_DEFINE
*/
#define GPIO_MODE_Analgo    ((uint16_t)0x0000)
#define GPIO_MODE_IN_HIZ    ((uint16_t)0x0001)
#define GPIO_MODE_IN_PU     ((uint16_t)0x0002)
#define GPIO_MODE_IN_PD     ((uint16_t)0x0003)
#define GPIO_MODE_OUT_PP    ((uint16_t)0x0004)
#define GPIO_MODE_OUT_OD    ((uint16_t)0x0005)
#define GPIO_MODE_OUT_AF_PP ((uint16_t)0x0006)
#define GPIO_MODE_OUT_AF_OD ((uint16_t)0x0007)
#define GPIO_MODE_AF_IN     ((uint16_t)0x0008)

/*
                                   GPIO_SPEED
*/
#define GPIO_SPEED_2M  ((uint16_t)0x0001)
#define GPIO_SPEED_10M ((uint16_t)0x0001)
#define GPIO_SPEED_50M ((uint16_t)0x0001)

/******************************************************************************
                                      APIs
******************************************************************************/
void MCAL_GPIO_init(GPIO_Typedef* GPIOx, GPIO_PinConfig_t* PinConfig);
void MCAL_GPIO_term(GPIO_Typedef* GPIOx, GPIO_PinConfig_t* PinConfig);

#endif /* ifndef STM32F103C6_GPIO_H_ */
