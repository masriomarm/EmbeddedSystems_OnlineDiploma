#ifndef READ_FILE_H_
#define READ_FILE_H_

#include "main.h"

#define ROLL_NUM_LENGTH     3
#define NAME_FIRST_LENGTH   15
#define NAME_LAST_LENGTH    15
#define GPA_LENGTH          5
#define COURSE_LENGTH       5
#define ITEMS_BEFORE_COURSE 4

#define FILE_NAME_PRJ2      "data.txt"
#define TYPE_IN_FILE        char

typedef struct S_StduentData {
  char rollnum[ROLL_NUM_LENGTH];
  char name_first[NAME_FIRST_LENGTH];
  char name_last[NAME_LAST_LENGTH];
  char gpa[GPA_LENGTH];
  char course[COURSE_LENGTH][3];
} student_data_t;

#endif ///< READ_FILE_H_
