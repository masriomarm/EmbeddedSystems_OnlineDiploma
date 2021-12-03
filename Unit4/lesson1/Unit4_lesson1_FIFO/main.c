/*
 * main.c
 *
 *  Created on: Nov 20, 2021
 *      Author: OmarElmasri
 */
#include "FIFO.h"

int main()
{

	FIFObuff UARTbuff; FIFObuffer_t FIFO_UART;
	ELEMENT_SIZE i, temp;

	if (FIFO_init(&FIFO_UART, &UARTbuff, LENGTH1) == FIFO_noerror)
		printf("fifo init .... success!\n");

	for (i=0; i<7 ; i++)
	{
		printf("FIFO Enqueue (%d) \n",i);
			if(FIFO_enq(&FIFO_UART, i)== FIFO_noerror)
				printf("\t fifo enqueue... Done!\n");
			else
				printf("\t fifo enqueue... FAIL!\n");
	}

	FIFO_print(&FIFO_UART);

		if(FIFO_deq(&FIFO_UART, &temp) == FIFO_noerror)
			printf("\t fifo dequeue %d ... Done!\n",temp);
		if(FIFO_deq(&FIFO_UART, &temp) == FIFO_noerror)
			printf("\t fifo dequeue %d ... Done!\n",temp);

		FIFO_print(&FIFO_UART);

	return 0;
}
