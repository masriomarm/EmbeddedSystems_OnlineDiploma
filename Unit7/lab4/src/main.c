/*
 * lcd_keypad.c
 *
 * Created: Sat  9 Jul 23:39:09 EET 2022
 * Author : Omar Elmasri
 */

#include "inc/keypad.h"
#include "inc/lcd.h"
#include "inc/stm32f103c6.h"
#include "inc/stm32f103c6_EXTI.h"

void init_GPIO(void);

int main()
{

  EXTI_GPIO_Mapping_t temp __attribute__((unused));
  temp = EXTI1PA1;
  CLK_EN_GPIOA;
  CLK_EN_GPIOB;
  init_GPIO();
  init_LCD();
  Keypad_init();
  char flag = 1;
  char key;
  while (1)
  {
    key = Keypad_getkey();
    switch (key)
    {
      case 'A':
        break;
      case '?':
        LCD_cmd(LCD_CMD_DISP_CLR);
        break;
      default:
        LCD_disp(key);
        break;
    }
    if (key == '5' && flag)
    {
      LCD_cmd(0x18);
      LCD_cmd(0x18);
      LCD_cmd(0x18);
      flag = 0;
    }
  }
  return 0;
}

void init_GPIO(void)
{
  /// init LCD pins
  {
    GPIO_PinConfig_t cnfg = {.GPIO_Port  = LCD_PORT,
                             .GPIO_Pin   = GPIO_Pin_0,
                             .GPIO_Mode  = GPIO_MODE_OUT_PP,
                             .GPIO_SPEED = GPIO_SPEED_10M};
    for (int i = 1; i < 11; ++i)
    {
      MCAL_GPIO_init(cnfg.GPIO_Port, &cnfg);
      cnfg.GPIO_Pin = 1 << i;
    }
  }
  //  DDRA = 0xFF;

  {
    GPIO_PinConfig_t cnfg = {.GPIO_Port  = KEY_PAD_PORT,
                             .GPIO_Pin   = GPIO_Pin_0,
                             .GPIO_Mode  = GPIO_MODE_OUT_PP,
                             .GPIO_SPEED = GPIO_SPEED_10M};
    for (int i = 1; i < 3; ++i)
    {
      MCAL_GPIO_init(cnfg.GPIO_Port, &cnfg);
      cnfg.GPIO_Pin = 1 << i;
    }
  }
  //  DDRB |= (0b111 << 0);

  /// init Keypad pins
  {
    GPIO_PinConfig_t cnfg = {.GPIO_Port  = KEY_PAD_PORT,
                             .GPIO_Pin   = GPIO_Pin_3,
                             .GPIO_Mode  = GPIO_MODE_OUT_PP,
                             .GPIO_SPEED = GPIO_SPEED_10M};
    for (int i = 4; i < 7; ++i) /// number of rows-1
    {
      MCAL_GPIO_init(cnfg.GPIO_Port, &cnfg);
      cnfg.GPIO_Pin = 1 << i;
    }
  }
  {
    GPIO_PinConfig_t cnfg = {.GPIO_Port = KEY_PAD_PORT,
                             .GPIO_Pin  = GPIO_Pin_12,
                             .GPIO_Mode = GPIO_MODE_IN_PD};
    for (int i = 13; i < 15; ++i) /// number of cols-1
    {
      MCAL_GPIO_init(cnfg.GPIO_Port, &cnfg);
      cnfg.GPIO_Pin = 1 << i;
    }
  }
  //  DDRD = 0x00;
}
