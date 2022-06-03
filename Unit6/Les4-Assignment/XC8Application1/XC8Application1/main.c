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

#define  NORM

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