
// Omar Elmasri


#ifndef LIFO_H_
#define LIFO_H_
#include "stdio.h"
#include "stdlib.h"

// type definitions

//constrained to int size
typedef struct
{

	unsigned int length;
	unsigned int count;
	unsigned int* base;
	unsigned int* head;

}LIFObuff_t;

typedef enum {LIFO_noerror, LIFO_full, LIFO_empty, LIFO_null} LIFO_STATUS;

//APIs

LIFO_STATUS LIFO_add 	(LIFObuff_t* lifo_buf, unsigned int item);
LIFO_STATUS LIFO_get 	(LIFObuff_t* lifo_buf, unsigned int* item);
LIFO_STATUS LIFO_init 	(LIFObuff_t* lifo_buf, unsigned int*  buff, unsigned int length);

#endif
