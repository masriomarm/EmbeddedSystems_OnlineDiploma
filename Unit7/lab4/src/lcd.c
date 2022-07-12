/*
 * lcd.c
 *
 * Created: Sat  2 Jul 18:41:31 EET 2022
 *  Author: Omar Elmasri
 */

#include "inc/lcd.h"
#include "inc/stm32f103c6_GPIO.h"
#include "inc/stm32f103c6.h"

void init_LCD(void)
{
  _delay_ms(20);
  LCD_cmd(LCD_CMD_8_BIT_MODE);
  LCD_cmd(LCD_CMD_DISP_ON_CURS_BLNK);
  LCD_cmd(LCD_CMD_DISP_CLR);
  _delay_us(2000);
}
void LCD_cmd(uint8_t cmd)
{
  //   CLR_BIT(PORTB, LCD_RS);
  MCAL_GPIO_write_pin(LCD_PORT, LCD_RS, GPIO_PIN_RESET);
  //  CLR_BIT(PORTB, LCD_RW);
  MCAL_GPIO_write_pin(LCD_PORT, LCD_RW, GPIO_PIN_RESET);
  _delay_ms(10);

  uint16_t temp = MCAL_GPIO_read_port(LCD_PORT);
  temp &= 0xFF00;
  temp |= ((uint16_t)(cmd));
  MCAL_GPIO_write_port(LCD_PORT, temp);

  //  SET_BIT(PORTB, LCD_EN);
  MCAL_GPIO_write_pin(LCD_PORT, LCD_EN, GPIO_PIN_SET);
  _delay_ms(1);
  //  CLR_BIT(PORTB, LCD_EN);
  MCAL_GPIO_write_pin(LCD_PORT, LCD_EN, GPIO_PIN_RESET);
  _delay_us(100);
}
void LCD_disp(char data)
{
  static int pos = 0;
  if (pos < 16)
  {
    LCD_disp_char(data);
    pos++;
  }
  else if (pos == 16)
  {
    LCD_cmd(LCD_CMD_CURS_LINE_2);
    LCD_disp_char(data);
    pos++;
  }
  else if (pos < 32)
  {
    LCD_disp_char(data);
    pos++;
  }
  else
  {
    LCD_cmd(LCD_CMD_DISP_CLR);
    LCD_cmd(LCD_CMD_CURS_LINE_1);
    LCD_disp_char(data);
    pos = 1;
  }
}
void LCD_disp_char(char data)
{
  //  GPIOA = data;
  uint16_t temp = MCAL_GPIO_read_port(LCD_PORT);
  temp &= 0xFF00;
  temp |= (data);
  MCAL_GPIO_write_port(LCD_PORT, temp);

  MCAL_GPIO_write_pin(LCD_PORT, LCD_RS, GPIO_PIN_SET);
  MCAL_GPIO_write_pin(LCD_PORT, LCD_RW, GPIO_PIN_RESET);
  MCAL_GPIO_write_pin(LCD_PORT, LCD_EN, GPIO_PIN_SET);
  _delay_ms(1);
  MCAL_GPIO_write_pin(LCD_PORT, LCD_EN, GPIO_PIN_RESET);
  _delay_us(100);
}
