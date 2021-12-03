/*
 * FIFO.h
 *
 *  Created on: Nov 20, 2021
 *      Author: OmarElmasri
 */

#ifndef FIFO_H_
#define FIFO_H_

#include "stdio.h"
#include "stdint.h"


//USER Configuration
//select element type (uint8_t, 16, 32,...)

#define ELEMENT_SIZE 	uint8_t
#define LENGTH1 		5

typedef ELEMENT_SIZE FIFObuff [LENGTH1] ;
typedef struct
{
	unsigned int 	length;
	unsigned int 	count;
	ELEMENT_SIZE* 	base;
	ELEMENT_SIZE*	head;
	ELEMENT_SIZE*	tail;

}FIFObuffer_t;

typedef enum { FIFO_noerror, FIFO_full, FIFO_empty, FIFO_null } FIFOstatus;

// APIs

FIFOstatus 	FIFO_init 		(FIFObuffer_t* fifo, ELEMENT_SIZE* buf, uint32_t length);
FIFOstatus	FIFO_enq 		(FIFObuffer_t* fifo, ELEMENT_SIZE item);
FIFOstatus	FIFO_deq		(FIFObuffer_t* fifo, ELEMENT_SIZE* item);
FIFOstatus 	FIFO_status		(FIFObuffer_t* fifo);
void		FIFO_print		(FIFObuffer_t* fifo);

#endif /* FIFO_H_ */
