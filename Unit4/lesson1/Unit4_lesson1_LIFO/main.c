
// Omar Elmasri
#include "LIFO.h"
#include "stdio.h"
#include "stdlib.h"

unsigned int buff1[5];

int main()
{
	LIFObuff_t UART_lifo,I2C_lifo;
	LIFO_init(&UART_lifo, buff1,5);

	unsigned int* buff2= (unsigned int*) malloc(5*sizeof(unsigned int));
	LIFO_init(&I2C_lifo, buff2,5);

	for(int i=0; i<7; i++)
	{
		if(	LIFO_add(&UART_lifo, i) == LIFO_noerror)
			printf("UART_LIFO, add: %d \n",i);
	}

	unsigned int temp=0;
	for(int i=0; i<7; i++)
	{
		if(	LIFO_get(&UART_lifo, &temp) == LIFO_noerror)
			printf("UART_LIFO, get: %d \n",temp);
	}

	return 0;
}
