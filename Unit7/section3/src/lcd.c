/*
 * lcd.c
 *
 * Created: Sat  2 Jul 18:41:31 EET 2022
 *  Author: Omar Elmasri
 */

#include "inc/lcd.h"
#include "inc/generic.h"

void init_LCD(void) {
  _delay_ms(20);
  LCD_cmd(LCD_CMD_8_BIT_MODE);
  LCD_cmd(LCD_CMD_DISP_ON_CURS_BLNK);
  LCD_cmd(LCD_CMD_DISP_CLR);
  _delay_us(2000);
}
void LCD_cmd(uint8_t cmd) {
  CLR_BIT(PORTB, LCD_RS);
  CLR_BIT(PORTB, LCD_RW);
  _delay_us(10);
  PORTA = cmd;
  SET_BIT(PORTB, LCD_EN);
  _delay_us(1);
  CLR_BIT(PORTB, LCD_EN);
  _delay_us(100);
}
void LCD_disp(char data) {
  static int pos = 0;
  if (pos < 16) {
    LCD_disp_char(data);
    pos++;
  } else if (pos == 16) {
    LCD_cmd(LCD_CMD_CURS_LINE_2);
    LCD_disp_char(data);
    pos++;
  } else if (pos < 32) {
    LCD_disp_char(data);
    pos++;
  } else {
    LCD_cmd(LCD_CMD_DISP_CLR);
    LCD_cmd(LCD_CMD_CURS_LINE_1);
    LCD_disp_char(data);
    pos = 1;
  }
}
void LCD_disp_char(char data) {
  PORTA = data;
  SET_BIT(PORTB, LCD_RS);
  CLR_BIT(PORTB, LCD_RW);
  SET_BIT(PORTB, LCD_EN);
  _delay_us(1);
  CLR_BIT(PORTB, LCD_EN);
  _delay_us(100);
}
