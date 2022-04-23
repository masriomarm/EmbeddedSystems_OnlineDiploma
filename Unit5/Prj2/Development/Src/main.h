#ifndef MAIN_H_
#define MAIN_H_

#include "stdint.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

#define MAX_LINE_LENGTH     256
#define MAX_WORD_LENGTH     20

#define ROLL_NUM_LENGTH     3
#define NAME_FIRST_LENGTH   15
#define NAME_LAST_LENGTH    15
#define GPA_LENGTH          5
#define COURSE_LENGTH       5
#define COURSE_ID_LENGTH    3
#define ITEMS_BEFORE_COURSE 4

typedef struct S_StduentData {
  char rollnum[ROLL_NUM_LENGTH];
  char name_first[NAME_FIRST_LENGTH];
  char name_last[NAME_LAST_LENGTH];
  char gpa[GPA_LENGTH];
  char course[COURSE_LENGTH][COURSE_ID_LENGTH];
} student_data_t;

#define MAX_STUDENT_NUM 10
extern student_data_t students[MAX_STUDENT_NUM];

#include "prj2_functions.h"
#include "prj2_util.h"

#endif ///< MAIN_H_
