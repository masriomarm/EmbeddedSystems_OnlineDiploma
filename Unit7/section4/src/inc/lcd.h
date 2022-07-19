/*
 * lcd.h
 *
 * Created: 4/22/2021 3:01:25 PM
 *  Author: Marco
 */

#ifndef LCD_H_
#define LCD_H_

#include <avr/io.h>
#include <util/delay.h>

#define LCD_CMD_DISP_CLR (uint8_t)0x01
#define LCD_CMD_DISP_ON_CURS_BLNK (uint8_t)0x0E
#define LCD_CMD_DISP_ON_CURS_OFF (uint8_t)0x0C
#define LCD_CMD_CURS_LINE_1 (uint8_t)0x80
#define LCD_CMD_CURS_LINE_2 (uint8_t)0xC0
#define LCD_CMD_8_BIT_MODE (uint8_t)0x38
#define LCD_CMD_4_BIT_MODE (uint8_t)0x28

#define LCD_RS 1
#define LCD_RW 2
#define LCD_EN 3

#define LCD_PORT PORTA
#define LCD_DPIN PINA
#define LCD_CPRT PORTB

void init_LCD(void);
void LCD_cmd(uint8_t);
void LCD_disp(char);
void LCD_disp_char(char);
void LCD_print(char *, uint8_t);

#endif /* LCD_H_ */
