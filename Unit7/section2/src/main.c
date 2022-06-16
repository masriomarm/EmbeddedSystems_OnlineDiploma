/*
 * lcd_keypad.c
 *
 * Created: 4/22/2021 1:36:22 PM
 * Author : Marco
 */

#include "inc/lcd.h"
#include "inc/keypad.h"

void init_GPIO(void);

int main()
{

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

void init_GPIO(void) {
  DDRA = 0xFF;
  DDRB |= (0b111 << 0);
  DDRD = 0x00;
}
