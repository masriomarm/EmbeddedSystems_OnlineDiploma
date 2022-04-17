#ifndef MAIN_H_
#define MAIN_H_

#include "stdint.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

#include "read_file.h"

#define MAX_STUDENT_NUM 10
extern student_data_t students[MAX_STUDENT_NUM];

void    read_file(void);
void    map_words(TYPE_IN_FILE, const char *, student_data_t *, char);
uint8_t rollnum_fail(const char *, student_data_t *, TYPE_IN_FILE);

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
