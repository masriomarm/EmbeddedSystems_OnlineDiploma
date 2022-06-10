/*
 * main.c
 *
 * Created: 5/29/2022 3:53:32 AM
 *  Author: Omar Elmasri
 */

#include "avr/io.h"
#include "avr/iom32.h"
#include "avr/common.h"
#include "avr/interrupt.h"
#include "util/delay.h"

#define  TASK1
#undef F_CPU
#define F_CPU 8e6

#ifdef TASK1

ISR(INT0_vect){

  //  PORTD ^= 1 << 3;
}
int main(void)
{
  // todo: set pin as ext interrupt that toggles another pin

  DDRA |= 0xFF;

  //  sei();

  while(1){

    for(int i = 0; i<8; i++){
      PORTA |= 1 << i;
      _delay_ms(1e3);
    }
    for(int i = 7; i>= 0; i--){
      PORTA &= ~(1 << i);
      _delay_ms(1e3);
    }
    PORTA = 0xFF;
    _delay_ms(10e3);
    PORTA = 0x00;
    _delay_ms(10e3);
    PORTA = 0xFF;
    _delay_ms(10e3);
    PORTA = 0x00;
    _delay_ms(10e3);
    PORTA = 0xFF;
    _delay_ms(10e3);
    PORTA = 0x00;
    _delay_ms(10e3);

  }
}
#endif


#ifdef NORM

ISR(INT0_vect){

  PORTD ^= 1 << 3;
}
int main(void)
{
  // todo: set pin as ext interrupt that toggles another pin

  DDRD &= ~(1<<PD2); ///D2 input
  PORTD &= ~(1<<PD2); /// D2 input floating

  DDRD |= (1<<3); ///D3 output
  PORTD &= ~(1<<3); ///D3 output high

  MCUCR |= (0b11<<0);
  GICR |= (0b010<<5);
  sei();

  while(1);
}
#endif

#ifdef MADI

ISR(INT0_vect){

  PORTC ^= 1 << 3;
}
int main(void)
{
  // todo: set pin as ext interrupt that toggles another pin

  DDRD &= ~(1<<PD2); ///D2 input
  PORTD &= ~(1<<PD2); /// D2 input floating

  DDRC |= (1<<3); ///D3 output
  PORTC |= (1<<3); ///D3 output high
  DDC5

    MCUCR |= (0b11<<0);
  GICR |= 1<<6;
  sei();

  while(1);
}
#endif

#ifdef DATA

ISR(INT0_vect){

  PORTD ^= 1 << 3;
}
int main(void)
{
  // todo: set pin as ext interrupt that toggles another pin

  DDRD &= ~(1 << 2); ///D2 input
  PORTD &= ~(1<<PD2); /// D2 input floating

  DDRD |= 1 << 3;///D3 output
  PORTD |= (1<<3); ///D3 output high

  MCUCR |= (0b11<<0);
  GICR |= 1<<6;
  sei();

  while(1);
}
#endif
