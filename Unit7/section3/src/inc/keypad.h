#ifndef KEY_PAD_H_
#define KEY_PAD_H_

#include "generic.h"

#define KEY_PAD_PORT      GPIOB

#define KeyPad_ROW        GPIO_Pin_3
#define KeyPad_ROW_offset 3
#define KeyPad_COL        GPIO_Pin_12
#define KeyPad_COL_offset 12

#define Keypad_num_rows 4
#define Keypad_num_cols 3

char Keypad_getkey(void);
void Keypad_init(void);

#endif /* ifndef KEY_PAD_H_ */
