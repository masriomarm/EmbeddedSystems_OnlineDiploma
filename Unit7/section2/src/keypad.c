/// Omar Elmasri, Mon 13 Jun 2022 03:56:14 EET
#include "inc/generic.h"

char key_val[4][3]={
  {'3','2','1'}
  ,{'6','5','4'}
  ,{'9','8','7'}
  ,{'#','0','*'}
};

char Keypad_getkey(void){
  for(int i= 0; i <4; i++){
    PORTD &= ~(0b1111 << 0);
    PORTD |= 1 << i;
    for(int j =0; j<3; j++){
      if(RDD_BIT(PIND,j+4)){
        while(RDD_BIT(PIND,j+4));
        return key_val[i][j];
        _delay_ms(10);
      }
    }
  }

  return 'A';
}

void Keypad_init(void){
  DDRD |= (0b1111 << 0);
  DDRD &= ~(0b111 << 4);
  PORTD &= ~(0b111 << 4);
}



