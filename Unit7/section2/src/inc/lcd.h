/*
 * lcd.h
 *
 * Created: 4/22/2021 3:01:25 PM
 *  Author: Marco
 */


#ifndef LCD_H_
#define LCD_H_

#include<avr/io.h>
#include<util/delay.h>

#define LCD_CMD_DISP_CLR          (uint8_t)0x01
#define LCD_CMD_DISP_ON_CURS_BLNK (uint8_t)0x0E
#define LCD_CMD_DISP_ON_CURS_OFF  (uint8_t)0x0C
#define LCD_CMD_CURS_LINE_1       (uint8_t)0x80
#define LCD_CMD_CURS_LINE_2       (uint8_t)0xC0
#define LCD_CMD_8_BIT_MODE        (uint8_t)0x38

#define LCD_RS                    2
#define LCD_RW                    1
#define LCD_EN                    0

void init_LCD(void);
void LCD_cmd(uint8_t);
void LCD_disp(char);
void LCD_disp_char(char);

#endif /* LCD_H_ */
