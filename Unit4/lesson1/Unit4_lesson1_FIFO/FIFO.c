/*
 * FIFO.c
 *
 *  Created on: Nov 20, 2021
 *      Author: OmarElmasri
 */

#include "FIFO.h"

FIFOstatus 	FIFO_init 		(FIFObuffer_t* fifo, ELEMENT_SIZE* buf, uint32_t length)
{
	// check buf if valid
	if(buf == NULL)
		return FIFO_null;

	fifo->base = buf;
	fifo->head = buf;
	fifo->tail = buf;
	fifo->length = length;
	fifo->count = 0;

	return FIFO_noerror;
}
FIFOstatus	FIFO_enq 		(FIFObuffer_t* fifo, ELEMENT_SIZE item)
{
	//check if fifo valid
	if(!fifo->base || !fifo->head || !fifo->tail)
		return FIFO_null;
	//chekc if fifo full
	if (fifo->count == fifo->length)
		return FIFO_full;

	*(fifo->head) = item;
	fifo->count ++;

	// circular fifo
	if(fifo->head == (fifo->base + (fifo->length*sizeof(ELEMENT_SIZE))))
		fifo->head = fifo->base;
	else
		fifo->head++;

	return FIFO_noerror;

}
FIFOstatus	FIFO_deq		(FIFObuffer_t* fifo, ELEMENT_SIZE* item)
{
	if(!fifo->base || !fifo->head || !fifo->tail)
		return FIFO_null;
	//check if fifo empty
	if(fifo->count == 0)
		return FIFO_empty;

	*item = *(fifo->tail);
	fifo->count -- ;

	if(fifo->tail == (fifo->base + (fifo->length*sizeof(ELEMENT_SIZE))))
		fifo->tail = fifo->base;
	else
		fifo->tail++;

	return FIFO_noerror;
}
FIFOstatus 	FIFO_status		(FIFObuffer_t* fifo)
{
	return FIFO_noerror;
}
void		FIFO_print		(FIFObuffer_t* fifo)
{
	ELEMENT_SIZE* temp;
	int i;
	if(fifo->count == 0)
		printf("fifo is empty \n");
	else {
		temp = fifo->tail;
		printf("\n ============fifo print============\n");
		for (i = 0; i<fifo->count; i++)
		{
			printf("\t %d \n",*temp);
			temp++;
		}
		printf("\t\t ============== \t\t \n");
	}
}

