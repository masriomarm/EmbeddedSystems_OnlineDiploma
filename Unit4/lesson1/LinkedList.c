/**
 * @file LinkedList.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief Embedded systems Diploma.
 * unit 4 , lesson 1. DataStructure; LinkedList
 *
 * @version 0.1
 * @date 2021-12-09
 *
 * @copyright Copyright (c) 2021
 */


#include <stdio.h>
#include "string.h"
// #include "conio.h"
#include "stdint.h"
#include "stdlib.h"

//effective data
struct Sdata
{
	int ID;
	char name[40];
	float height;
};

//linked list node
struct Sstudent
{
	struct Sdata student;
	struct Sstudent* pNextStudent;
};

#define ALLOC_FAIL		printf("\n\t\tmemory allocation failed... exit"); return 0;

struct Sstudent* gpFirstStudent = NULL; //list head, only change value at addstudent first call.
struct Sstudent* pLastStudent = NULL; // end of list, its pointer should always point to null.

// [w]:get the nth node

int findIndex()
{
	/// request node index
	char temp [40];
	unsigned int index;

	printf("\n\t Enter index to be found: ");
	gets(temp);
	index=atoi(temp);

	/// searching for node index
}

// [p]:count number of node

// [p]:get the nth node from the end.
// use 2 ptr with detr space = nth node

// [p]:find the middle of linked list.
//  use 2 ptr, one with speed 1x, other with 2x
//  by the time 2x at the end, 1x shouold be at middle

// [p]:reverse list



inline int alloc_check( void* ptr )
{
	//return 1 if allocation failed
	if ( ptr == NULL )
		{
				printf("memory allocation failed... exit");
				return 1;
		}
	else		return 0;
}
int AddStuden()
{
	struct Sstudent* pNewStudent;
	char temp [40];
	if ( gpFirstStudent == NULL ) //	incase of first entry
	{
		//create new record
		pNewStudent = (struct Sstudent*) malloc(sizeof(struct Sstudent));
		// if (!());
		// {
		// 	ALLOC_FAIL//exit if malloc failed
		// }
		//malloc success, make head points to the first record of the list
		gpFirstStudent = pNewStudent; //now head points to first entry
		pLastStudent = pNewStudent; // first and last entry in the list
		pLastStudent->pNextStudent = NULL; //closing the list

	}

	else // normal case where list contain records
	// add new record
	// last entry pointer should point to the new record added.
	{
		pNewStudent = (struct Sstudent*) malloc(sizeof(struct Sstudent));
		if(!pNewStudent)
		{
			ALLOC_FAIL
		}
	}
		pLastStudent->pNextStudent = pNewStudent;	//linking last(old entry) entry to the new entry
		// release(point to null) last data pointer after filling data of new entry
		// filling data
		printf("\n Enter the ID: ");
		gets(temp);
		pNewStudent->student.ID = atoi(temp);
		printf("\n Enter the full name: ");
		gets(pNewStudent->student.name);
		printf("\n Enter the height: ");
		gets(temp);
		pNewStudent->student.height = atof(temp);

		pNewStudent->pNextStudent = NULL; 	 //closing the list
		pLastStudent = pNewStudent; 		//end of the list

		return 0;
}

int DelStudent ()
{
	char temp [40];
	unsigned int idtemp;

	printf("\n\t Enter student id to be deleted: ");
	gets(temp);
	idtemp=atoi(temp);

	if( gpFirstStudent == NULL )
	{
		printf("Empty list...");
		return 0;
	}

	struct Sstudent* tempptr= gpFirstStudent; // used to navigate through the list
	struct Sstudent* prevptr= NULL;	//once desired entry is found, used to link to next entry

	while(tempptr)
	{
		if( tempptr->student.ID == idtemp )
		{
			if (prevptr)
				prevptr->pNextStudent = tempptr->pNextStudent;
			else
				gpFirstStudent = tempptr->pNextStudent;

			free((void*)tempptr);
			return 1;
		}
		prevptr = tempptr;
		tempptr = tempptr->pNextStudent;
	}

	printf("\n no matched ID");
	return 0;
}

void ViewStudent()
{
	struct Sstudent* tempptr= gpFirstStudent; // used to navigate through the list
	int count = 0;

	if (gpFirstStudent == NULL) printf("\n Empty List...");
	else
	{
		while(tempptr)
		{
			printf("\n\t\t record number %d ... ", ++count);
			printf("\n ID: %d", tempptr->student.ID);
			printf("\n name: %s", tempptr->student.name);
			printf("\n height: %0.2f", tempptr->student.height);
			tempptr=tempptr->pNextStudent;
		}
	}
}

void DelAll()
{
	struct Sstudent* tempptr= gpFirstStudent; // used to navigate through the list
	struct Sstudent* currptr= tempptr;
	int count = 0;

		while(tempptr)
		{
			currptr=tempptr;
			tempptr=tempptr->pNextStudent;
			free((void*)currptr);
		}
		gpFirstStudent = NULL;
}

void main()
{
	char temp_text[40];
	char loopflag = 1; char exitconfirm;

	while (loopflag)
	{
		printf("\n\t =============================== \n");
		printf("\n\t Choose of the following options \n");
		printf("\n\t 1: Add Student");
		printf("\n\t 2: Delete Student");
		printf("\n\t 3: View Student");
		printf("\n\t 4: Delete All Students");
		printf("\n\t 5: Exit");
		printf("\n\t Enter Option Number: ");

		gets(temp_text);
		printf("\n>>>loading... ");
		switch(atoi(temp_text))
		{
			case 1:
			AddStuden();
			break;
			case 2:
			DelStudent();
			break;
			case 4:
			DelAll();
			break;
			case 3:
			ViewStudent();
			break;
			case 5:
			printf("Confirm Exit? [y/n]");
			scanf("%c",&exitconfirm);
			switch(exitconfirm)
			{
				case 'Y':
				case 'y':
				loopflag = 0;
				break;
				case 'N': case 'n':
				break;
				default:
				break;
			}
			break;
			default:
			printf("wrong option");
			break;
		}
	}
}
















