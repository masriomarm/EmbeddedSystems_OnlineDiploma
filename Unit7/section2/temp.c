/*
 * main.c
 *
 * Created: 5/31/2022 10:40:47 AM
 *  Author: Omar
 */

#include "avr/common.h"
#include "avr/io.h"
#include "avr/iom32.h"
#include "util/delay.h"

#define RDD_BIT(reg, bit) (((reg) & (1 << bit)) >> (bit))
#define SET_BIT(reg, bit) ((reg) |= 1 << (bit))
#define TGL_BIT(reg, bit) ((reg) ^= 1 << (bit))
#define CLR_BIT(reg, bit) ((reg) &= ~(1 << (bit)))

void init_LCD(void);
void init_GPIO(void);
void Keypad_init(void);
char Keypad_getkey(void);
void LCD_cmd(uint8_t);
void LCD_disp(char);
void LCD_disp_char(char);

#define LCD_CMD_DISP_CLR          (uint8_t)0x01
#define LCD_CMD_DISP_ON_CURS_BLNK (uint8_t)0x0E
#define LCD_CMD_DISP_ON_CURS_OFF  (uint8_t)0x0C
#define LCD_CMD_CURS_LINE_1       (uint8_t)0x80
#define LCD_CMD_CURS_LINE_2       (uint8_t)0xC0
#define LCD_CMD_8_BIT_MODE        (uint8_t)0x38

#define LCD_RS                    2
#define LCD_RW                    1
#define LCD_EN                    0

char bcdsegment[]  = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
char segment[]     = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D,
                      0x7D, 0x07, 0x7F, 0x67, 0x80};
int  numb[]        = {7, 4, 6};
char key_val[4][3] = {
    {'3', '2', '1'}, {'6', '5', '4'}, {'9', '8', '7'}, {'#', '0', '*'}};

/************************** LCD ***********************
 *****************************************************/

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
    pos = 0;
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

void init_GPIO(void) {
  DDRA = 0xFF;
  DDRB |= (0b111 << 0);
  DDRD = 0x00;
}

/************************** Keypad ***********************
 ********************************************************/

char Keypad_getkey(void) {
  for (int i = 0; i < 4; i++) {
    PORTD &= ~(0b1111 << 0);
    PORTD |= 1 << i;
    for (int j = 0; j < 3; j++) {
      if (RDD_BIT(PIND, (j + 4))) {
        while (RDD_BIT(PIND, (j + 4)))
          ;
        return key_val[i][j];
        _delay_ms(1);
      }
    }
  }

  return 'A';
}

void Keypad_init(void) {
  DDRD |= (0b1111 << 0);
  DDRD &= ~(0b111 << 4);
  PORTD &= ~(0b111 << 4);
}

int main(void) {
  init_GPIO();
  init_LCD();
  Keypad_init();
  char key;
  while (1) {
    key = Keypad_getkey();
    switch (key) {
      case 'A': break;
      case '?': LCD_cmd(LCD_CMD_DISP_CLR); break;
      default: LCD_disp(key); break;
    }
  }
  return 0;
}
