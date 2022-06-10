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

#define SET_BIT(reg,bit)  ((reg) |= 1 << (bit))
#define TGL_BIT(reg,bit)  ((reg) ^= 1 << (bit))
#define CLR_BIT(reg,bit)  ((reg) &= ~(1 << (bit)))
#define RDD_BIT(reg,bit)  ((reg) & (1 << (bit)))
char segment[10]={0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
  int numb[] = {3,5,7};


#undef F_CPU
#define F_CPU 8e6

void init_EXTI(void);
void init_GPIO(void);
void init_CLK(void);

void init_GPIO(void){
  //  DDRA = 0xFF;
  DDRB &= ~(1 << 0);
  PORTB |= 1 << 0;
  DDRD = 0x0F;
  PORTD = 0 ;
  DDRA = 0xFF;
  DDRC |= 0b111 << 0;
}
void init_EXTI(void){
  SREG |= ( 1 << 7);
  GICR  |= ( 1 << 6);
  MCUCR |= ( 0b11 << 0 ); /// the rising edge on INT0 generates an interrupt request.
}

void init_CLK(void){

}
void my_delay(int n){

  for(volatile int i = 0; i <n ; i++){
    for(volatile int j = 0; j < 3; j++){
      PORTC = 0x00;
      PORTC |= 1 << j;
      int k = numb[j];
      PORTA = segment[k];
      _delay_ms(0.5);
    }
  }
}




ISR(INT0_vect){

  //  PORTD ^= 1 << 3;
}

#define TASK8

int main(void)
{
  init_GPIO();   PORTA = 0x00;
  int count = 0;
  char countup_flag = 1;
  char countdn_flag = 0;
  int num_segments = 3;
  while(1){
#ifdef TASK8
    /// operate multiple 7-segments on the same port
    /// PORTC operates transistors, controling the 7-segments starting from C0 if(RDD_BIT(PINB,0))
    for(int hndr = 0; hndr < 10; hndr ++){
      numb[0] = hndr;
      for(int tens = 0; tens < 10; tens ++){
        numb[1] = tens;
        for(int ones = 0; ones <10; ones ++){
          numb[2] = ones;
          if (RDD_BIT(PINB, 0)) {
            for (int i = 0; i < 3; i++) {
              PORTC = 0x00;
              PORTC |= 1 << i;
              int j = numb[i];
              PORTA = segment[j];
              my_delay(50);
            }
          } else {
            PORTC = 0x07;
            PORTA = segment[0];
          }
        }
      }
    }
  }
}

#endif

#ifdef TASK7
    /// operate multiple 7-segments on the same port
    /// PORTC operates transistors to control the 7-segments starting from C0 if(RDD_BIT(PINB,0)){
      if (RDD_BIT(PINB, 0)) {
        for (int i = 0; i < 3; i++) {
          PORTC = 0x00;
          PORTC |= 1 << i;
          int j = numb[i];
          PORTA = segment[j];
//          _delay_ms(1);
          _delay_ms(1);
        }
      } else {
        PORTC = 0x07;
        PORTA = segment[0];
      }

    }
  }

#endif

#ifdef TASK6
  /// operate 8 led to light up sequentially and turn off sequentially
  /// PORTA operates 8 leds, PINB input

  if(RDD_BIT(PINB,0) && countup_flag){
    PORTA |= 1 << count;
    count ++;
    _delay_ms(1e3);
  }
  if(count == 8){
    countup_flag = 0;
    countdn_flag = 1;
  }
  if(RDD_BIT(PINB,0) && countdn_flag){
    PORTA &= ~(1 << count);
    count --; _delay_ms(1e3); }

  if(count < 0){
    countdn_flag = 0;
    countup_flag = 1;
  }
}
#endif

#ifdef TASK5
if(RDD_BIT(PINB,0)){
  for(int i =0 ; i< 8; i++){
    PORTD += 1;
    _delay_ms(5e3);
  }
  for(int i =8; i > 0; i++){
    PORTD -= 1;
    _delay_ms(5e3);
  }
}
}
#endif

#ifdef TASK4

if(RDD_BIT(PINB,0)){
  for(int i = 0; i<10; i++){
    PORTA = segment[i];
    _delay_ms(5e3);
  }
  for(int i = 9; i>= 0; i--){
    PORTA = segment[i];
    _delay_ms(5e3);
  }
}
}
#endif
#ifdef TASK3

if(RDD_BIT(PINB,0)){
  for(int i = 0; i<8; i++){
    PORTA |= 1 << i;
    _delay_ms(1e3);
  }
  for(int i = 7; i>= 0; i--){
    PORTA &= ~(1 << i);
    _delay_ms(1e3);
  }
}
}
#endif



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
