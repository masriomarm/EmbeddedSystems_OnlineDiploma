/// Omar Elmasri, Mon 13 Jun 2022 03:56:14 EET
#include "inc/keypad.h"
#include "inc/generic.h"

char key_val[Keypad_num_rows][Keypad_num_cols] = {
    {'3', '2', '1'},
    {'6', '5', '4'},
    {'9', '8', '7'},
    {'#', '0', '*'},
};

char Keypad_getkey(void)
{
  GPIO_Typedef *KeyPad = GPIOB;
  for (int i = 0; i < Keypad_num_rows; i++) /// Keypad rows counter
  {
    KeyPad->ODR &= ~(0b1111 << KeyPad_ROW_offset);
    //    PORTD &= ~(0b1111 << 0);
    KeyPad->ODR |= (1 << (i + KeyPad_ROW_offset));
    //    PORTD |= 1 << i;
    for (int j = 0; j < Keypad_num_cols; j++) /// Keypad cols counter
    {
      if (MCAL_GPIO_read_pin(KeyPad, (1 << (j + KeyPad_COL_offset))))
      {
        while (MCAL_GPIO_read_pin(KeyPad, (1 << (j + KeyPad_COL_offset))))
          ;
        return key_val[i][j];
        _delay_ms(10);
      }
    }
  }

  return 'A';
}

void Keypad_init(void)
{
}
