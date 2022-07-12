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
void callback_exti9(void)
{
  LCD_cmd(LCD_CMD_DISP_CLR);
  char msg[] = "hello from exti9";
  int  index = 0;
  while (msg[index++] != '\0')
  {
    LCD_disp(msg[index]);
  }
}

int main()
{
#define LCD
#define LAB_4
  CLK_EN_GPIOA;
  CLK_EN_GPIOB;
  CLK_EN_AFIO;
  init_GPIO();
  init_LCD();
#ifdef LAB_4
  EXTI_GPIO_Mapping_t temp __attribute__((unused));

  temp                       = EXTI9PA9;
  EXTI_PinConfig_t temp_cnfg = {.EXTI_Line        = temp,
                                .EXTI_TriggerEdge = EXTI_Trigger_Rising,
                                .IRQ_EN           = EXTI_IRQ_Enable,
                                .EXTI_CallBack    = callback_exti9};
  MCAL_EXTI_GPIO_Init(&temp_cnfg);
#endif
#ifdef SECTION_3
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
#endif
  return 0;
}

void init_GPIO(void)
{
#ifdef LCD
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
#endif

#ifdef KEYPAD
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
#endif
}
