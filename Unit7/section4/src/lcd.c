/*
 * lcd.c
 *
 * Created: 4/22/2021 3:01:11 PM
 *  Author: Marco
 */

#include "inc/lcd.h"
#include "inc/generic.h"
#include "stdlib.h"
#define LCD_FOUR_BIT_MODE

void init_LCD(void) {
  _delay_ms(20);
#ifdef LCD_EIGHT_BIT_MODE
  LCD_cmd(LCD_CMD_8_BIT_MODE);
#endif

#ifdef LCD_FOUR_BIT_MODE
  LCD_CPRT &= ~(1 << LCD_EN);
  LCD_cmd(0x33);
  LCD_cmd(0x32);
  LCD_cmd(LCD_CMD_4_BIT_MODE);
#endif
  LCD_cmd(LCD_CMD_DISP_ON_CURS_BLNK);
  LCD_cmd(LCD_CMD_DISP_CLR);
  _delay_us(2000);
  LCD_cmd(0x06);
}
void LCD_cmd(uint8_t cmd) {
#ifdef LCD_EIGHT_BIT_MODE
  CLR_BIT(PORTB, LCD_RS);
  CLR_BIT(PORTB, LCD_RW);
  _delay_us(10);
  PORTA = cmd;
  SET_BIT(PORTB, LCD_EN);
  _delay_us(1);
  CLR_BIT(PORTB, LCD_EN);
  _delay_us(100);
#endif

#ifdef LCD_FOUR_BIT_MODE
  LCD_PORT = cmd & 0xF0;
  LCD_CPRT &= ~(1 << LCD_RS);
  LCD_CPRT &= ~(1 << LCD_RW);
  LCD_CPRT |= (1 << LCD_EN);
  _delay_us(1);
  LCD_CPRT &= ~(1 << LCD_EN);
  _delay_us(100);
  LCD_PORT = cmd << 4;
  LCD_CPRT |= (1 << LCD_EN);
  _delay_us(1);
  LCD_CPRT &= ~(1 << LCD_EN);
  _delay_us(100);
#endif
}
void LCD_print(char *str, uint8_t len) {

  for (int i = 0; i < len; ++i) {
    if (NULL == str) {
      break;
    }
    if (len >= 16) {
      LCD_disp(*str++);
    }
    if (len < 16) {
      LCD_disp_char(*str++);
    }
  }
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
#ifdef LCD_EIGHT_BIT_MODE
  PORTA = data;
  SET_BIT(PORTB, LCD_RS);
  CLR_BIT(PORTB, LCD_RW);
  SET_BIT(PORTB, LCD_EN);
  _delay_us(1);
  CLR_BIT(PORTB, LCD_EN);
  _delay_us(100);
#endif

#ifdef LCD_FOUR_BIT_MODE
  LCD_PORT = data & 0xF0;
  LCD_CPRT |= (1 << LCD_RS);
  LCD_CPRT &= ~(1 << LCD_RW);
  LCD_CPRT |= (1 << LCD_EN);
  _delay_us(1);
  LCD_CPRT &= ~(1 << LCD_EN);
  LCD_PORT = data << 4;
  LCD_CPRT |= (1 << LCD_EN);
  _delay_us(1);
  LCD_CPRT &= ~(1 << LCD_EN);
  _delay_us(100);
#endif
}
