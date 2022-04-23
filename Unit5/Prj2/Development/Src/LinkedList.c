/**
 * @file LinkedList.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief Embedded systems Diploma.
 * unit 4 , lesson 1. DataStructure; LinkedList
 * @version 0.1
 * @date 2021-12-09
 *
 * @copyright Copyright (c) 2021
 */

// #include "conio.h"
#include "stdint.h"
#include "stdlib.h"
#include "string.h"
#include <stdio.h>

#define BUF 40 ///< capture input string

/// effective data
struct Sdata {
  int   ID;
  char  name[BUF];
  float height;
};

/// linked list node
struct Sstudent {
  struct Sdata     student;
  struct Sstudent *pNextStudent;
};

#define ALLOC_FAIL                                  \
  printf("\n\t\tmemory allocation failed... exit"); \
  return 0;

struct Sstudent *gpFirstStudent =
    NULL; /// list head, only change value at addstudent first call.
struct Sstudent *pLastStudent =
    NULL; /// end of list, its pointer should always point to null.

#define IsListEmpty                 \
  if (gpFirstStudent == NULL) {     \
    printf("\n>>>\tEmpty list..."); \
    return 0;                       \
  }

inline int ListEmpty(struct Sstudent *head) {
  if (gpFirstStudent == NULL) {
    printf("Empty list...");
    return 1;
  } else
    return 0;
}

// [done]:get the nth node'98456u8i90olp-;[\]
int findIndex(void) {
  IsListEmpty

      /// request node index
      char     temp[BUF];
  unsigned int index = 1;

  printf("\n\t Enter index to be found: ");
  fgets(temp, BUF, stdin);
  index = atoi(temp);
  if (index < 1) {
    printf("\nError... Index has to be >= 1\n");
    return 0;
  }

  /// searching for node index
  struct Sstudent *tempptr =
      gpFirstStudent; // used to navigate through the list

  if (index == 1) {
    printf("\n ID: %d", tempptr->student.ID);
    printf("\n name: %s", tempptr->student.name);
    printf("\n height: %0.2f", tempptr->student.height);
    return 1;
  }
  for (int tempind = 2; tempind <= index; tempind++) {
    tempptr = tempptr->pNextStudent;
    if (tempptr->pNextStudent == NULL && tempind != index) {
      printf("\nIndex exceeds List");
      return 0;
    }
  }
  printf("\n ID: %d", tempptr->student.ID);
  printf("\n name: %s", tempptr->student.name);
  printf("\n height: %0.2f", tempptr->student.height);
  return 1;
}

// [done]:count number of node
int CountNodes(void) {
  IsListEmpty

      unsigned int count = 1;
  struct Sstudent *tempptr =
      gpFirstStudent; // used to navigate through the list
  while (tempptr->pNextStudent != NULL) {
    count++;
    tempptr = tempptr->pNextStudent;
  }
  printf("\n\tNodes count = %d", count);
  return count;
}

// [done]:get the nth node from the end.
// use 2 ptr with detr space = nth node
int NthFromEnd(void) {
  IsListEmpty

      /// request node index
      char     temp[BUF];
  unsigned int index = 1;

  printf("\n\t Enter index to be found: ");
  fgets(temp, BUF, stdin);
  index = atoi(temp);
  if (index < 0) {
    printf("\nError... Index has to be >= 0\n");
    return 0;
  }

  /// set 2 ptrs at head
  struct Sstudent *tempptr =
      gpFirstStudent; // used to navigate through the list
  struct Sstudent *tempptr_ahead =
      gpFirstStudent; // used to navigate through the list, will be ahead of
                      // tempptr
  /// set one ptr ahead
  for (int i = 0; i < index; i++) {
    /// if end of list while not reaching index
    if (tempptr_ahead->pNextStudent == NULL) {
      printf("Index exceeds list");
      return 0;
    }
    tempptr_ahead = tempptr_ahead->pNextStudent; /// offset ptr_ahead
  }
  /// loop the list until ptrahead->next is NULL
  while (tempptr_ahead->pNextStudent) {
    tempptr_ahead = tempptr_ahead->pNextStudent;
    tempptr       = tempptr->pNextStudent; /// node nth from end
  }
  printf("\n ID: %d", tempptr->student.ID);
  printf("\n name: %s", tempptr->student.name);
  printf("\n height: %0.2f", tempptr->student.height);
}

// [done]:find the middle of linked list.
//  use 2 ptr, one with speed 1x, other with 2x
//  by the time 2x at the end, 1x shouold be at middle. FAKES, count instead.
//  issues with memory boundary incase of ptr->next->next.
int GetMiddleNode(void) {
  /// is list empty?
  IsListEmpty

      /// init 2 ptrs to gpfirst
      struct Sstudent *tempptr =
          gpFirstStudent; // used to navigate through the list
  /// is list > 3
  unsigned int count = CountNodes();
  for (int i = 0; i < count / 2; i++) {
    tempptr = tempptr->pNextStudent;
  }
  /// loop the list and find middle
  printf("\n ID: %d", tempptr->student.ID);
  printf("\n name: %s", tempptr->student.name);
  printf("\n height: %0.2f", tempptr->student.height);
}

// [done]:reverse list
int ReverseList(void) {
  IsListEmpty

      struct Sstudent *prev    = NULL;
  struct Sstudent     *current = gpFirstStudent;
  struct Sstudent     *next    = NULL;
  while (current) {
    next                  = current->pNextStudent;
    current->pNextStudent = prev;
    prev                  = current;
    current               = next;
  }
  gpFirstStudent = prev;
  printf("\n\t...List Reversed was success!");
}

inline int alloc_check(void *ptr) {
  // return 1 if allocation failed
  if (ptr == NULL) {
    printf("memory allocation failed... exit");
    return 1;
  } else
    return 0;
}

int AddStuden(void) {
  struct Sstudent *pNewStudent;
  char             temp[BUF];
  if (gpFirstStudent == NULL) //	incase of first entry
  {
    // create new record
    pNewStudent = (struct Sstudent *)malloc(sizeof(struct Sstudent));
    // if (!());
    // {
    // 	ALLOC_FAIL//exit if malloc failed
    // }
    // malloc success, make head points to the first record of the list
    gpFirstStudent             = pNewStudent; // now head points to first entry
    pLastStudent               = pNewStudent; // first and last entry in the
    pNewStudent->pNextStudent  = NULL;
    pLastStudent->pNextStudent = NULL; // closing the list

  }

  else // normal case where list contain records
  // add new record
  // last entry pointer should point to the new record added.
  {
    pNewStudent = (struct Sstudent *)malloc(sizeof(struct Sstudent));
    if (!pNewStudent) {
      ALLOC_FAIL
    }
  }
  pLastStudent->pNextStudent =
      pNewStudent; // linking last(old entry) entry to the new entry
  pNewStudent->pNextStudent = NULL;
  pLastStudent              = pNewStudent;
  // release(point to null) last data pointer after filling data of new entry
  // filling data
  printf("\n Enter the ID: ");
  fgets(temp, BUF, stdin);
  pNewStudent->student.ID = atoi(temp);
  printf("\n Enter the full name: ");
  fgets(pNewStudent->student.name, BUF, stdin);
  printf("\n Enter the height: ");
  fgets(temp, BUF, stdin);
  pNewStudent->student.height = atof(temp);

  return 0;
}

int DelStudent(void) {
  char delconfirm;
  printf("\nConfirm delete students? [y/n]");
  scanf("%c", &delconfirm);
  switch (delconfirm) {
  case 'Y':
  case 'y': break;
  case 'N':
  case 'n': return 0; break;
  default: return 0; break;
  }

  char         temp[BUF];
  unsigned int idtemp;

  printf("\n\t Enter student id to be deleted: ");
  fgets(temp, BUF, stdin);
  idtemp = atoi(temp);

  if (gpFirstStudent == NULL) {
    printf("Empty list...");
    return 0;
  }

  struct Sstudent *tempptr =
      gpFirstStudent; // used to navigate through the list
  struct Sstudent *prevptr =
      NULL; // once desired entry is found, used to link to next entry

  while (tempptr) {
    if (tempptr->student.ID == idtemp) {
      if (prevptr)
        prevptr->pNextStudent = tempptr->pNextStudent;
      else
        gpFirstStudent = tempptr->pNextStudent;

      free((void *)tempptr);
      return 1;
    }
    prevptr = tempptr;
    tempptr = tempptr->pNextStudent;
  }

  printf("\n no matched ID");
  return 0;
}

int ViewStudent(void) {
  struct Sstudent *tempptr =
      gpFirstStudent; // used to navigate through the list
  int count = 0;

  if (gpFirstStudent == NULL)
    printf("\n Empty List...");
  else {
    while (tempptr) {
      printf("\n\t\t record number %d ... ", ++count);
      printf("\n ID: %d", tempptr->student.ID);
      printf("\n name: %s", tempptr->student.name);
      printf("\n height: %0.2f", tempptr->student.height);
      tempptr = tempptr->pNextStudent;
    }
  }
  return 0;
}

int DelAll(void) {
  char delconfirm;
  printf("\nConfirm delete all students? [y/n]");
  scanf("%c", &delconfirm);
  switch (delconfirm) {
  case 'Y':
  case 'y': break;
  case 'N':
  case 'n': return 0; break;
  default: return 0; break;
  }
  struct Sstudent *tempptr =
      gpFirstStudent; // used to navigate through the list
  struct Sstudent *currptr = tempptr;

  while (tempptr) {
    if (tempptr->pNextStudent == NULL) {
      free((void *)tempptr);
      return 0;
    }
    currptr = tempptr;
    tempptr = tempptr->pNextStudent;
    free((void *)currptr);
  }
  gpFirstStudent = NULL;
}

int ExitList(void) {
  char exitconfirm;
  printf("Confirm Exit? [y/n]");
  scanf("%c", &exitconfirm);
  switch (exitconfirm) {
  case 'Y':
  case 'y': exit(1); break;
  case 'N':
  case 'n': return 0; break;
  default: return 0; break;
  }
}

#define FCNS_COUNT 10
int (*FcnPtr[FCNS_COUNT])(void) = {
    AddStuden,  DelStudent, ViewStudent,   DelAll,      findIndex,
    CountNodes, NthFromEnd, GetMiddleNode, ReverseList, ExitList};

void Disp_Options(void) {
  printf("\n\t =============================== \n");
  printf("\n\t Choose of the following options \n");
  printf("\n\t 1: Add Student");
  printf("\n\t 2: Delete Student");
  printf("\n\t 3: View Student");
  printf("\n\t 4: Delete All Students");
  printf("\n\t 5: Find Index");
  printf("\n\t 6: Count Nodes");
  printf("\n\t 7: Get Nth Node From End");
  printf("\n\t 8: Get Middle Node");
  printf("\n\t 9: Reverse List");
  printf("\n\t 10: Exit");
  printf("\n\t Enter Option Number: ");
}
void main() {
  Disp_Options();
  char         temp_text[BUF];
  char         loopflag = 1;
  unsigned int count;

  while (loopflag) {
    fgets(temp_text, BUF, stdin);
    printf("\n>>>loading... ");

    if (((atoi(temp_text)) > FCNS_COUNT) ||
        ((atoi(temp_text)) < 0)) { /// incase of invalid choise
      printf("\n\tInvalid choise, please choose value between 1 and %d",
             FCNS_COUNT);
      continue;
    }

    FcnPtr[(atoi(temp_text) - 1)]();
  }
}
