#ifndef MAIN_H_
#define MAIN_H_

#include "stdint.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

#define ROLL_NUM_LENGTH     3
#define NAME_FIRST_LENGTH   15
#define NAME_LAST_LENGTH    15
#define GPA_LENGTH          5
#define COURSE_LENGTH       5
#define ITEMS_BEFORE_COURSE 4

typedef struct S_StduentData {
  char rollnum[ROLL_NUM_LENGTH];
  char name_first[NAME_FIRST_LENGTH];
  char name_last[NAME_LAST_LENGTH];
  char gpa[GPA_LENGTH];
  char course[COURSE_LENGTH][3];
} student_data_t;

#define MAX_STUDENT_NUM 10
extern student_data_t students[MAX_STUDENT_NUM];

#include "read_file.h"

void    read_file(void);

void read_manual(void);
void find_rollnum(void);
void find_firstname(void);
void find_coureid(void);
void totalnum_student(void);
void delete_rollnum(void);
void update_rollnum(void);
void show_all(void);
void exit_all(void);

#endif ///< MAIN_H_
