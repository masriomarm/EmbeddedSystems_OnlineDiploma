
// Omar Elmasri

#include "LIFO.h"

LIFO_STATUS LIFO_add 	(LIFObuff_t* lifo_buf, unsigned int item)
{
	//check if LIFO is vlaid
	if(!lifo_buf->base || !lifo_buf->head)
	{
		printf("\n\n ... LIFO return: %d\n\n",LIFO_null);
				return LIFO_null;
	}

	//check if LIFO is full
//	if( lifo_buf->head >= (lifo_buf->base +(lifo_buf->length * sizeof(unsigned int))))
	if (lifo_buf->count == lifo_buf->length )
	{
		printf("\n\n ... LIFO return: %d\n\n",LIFO_full);
				return LIFO_full;
	}

	//add value
	*(lifo_buf->head) = item;
	lifo_buf->head ++;
	lifo_buf->count ++;

	return LIFO_noerror;

}
LIFO_STATUS LIFO_get 	(LIFObuff_t* lifo_buf, unsigned int* item)
{
	//check if valid
	if(!lifo_buf->base || !lifo_buf->head)
	{
		printf("\n\n ... LIFO return: %d\n\n",LIFO_null);
				return LIFO_null;
	}

	//check if empty
	if (lifo_buf->count == 0)
	{
		printf("\n\n ... LIFO return: %d\n\n",LIFO_empty);
				return LIFO_empty;
	}

	lifo_buf->head --;
	*item=*(lifo_buf->head);
	lifo_buf->count--;

	return LIFO_noerror;

}
LIFO_STATUS LIFO_init 	(LIFObuff_t* lifo_buf, unsigned int*  buff, unsigned int length)
{
	if( buff == NULL)
		return LIFO_null;

	lifo_buf->base=buff;
	lifo_buf->head=buff;
	lifo_buf->length=length;
	lifo_buf->count=0;

	return LIFO_noerror;
}
