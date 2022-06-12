#! /usr/bin/bash
avr-gcc -D __ATmega32__ -mmcu=atmega32 -Os *.c -o out.elf
avr-objcopy -j .text -j .data out.elf -O ihex out.hex
