/**
 * @file main.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief Unit5/prj2 main file
 * @version 0.1
 * @date 2022-04-15
 *
 * @copyright Copyright (c) 2022
 *
 */
#include "main.h"

student_data_t students[MAX_STUDENT_NUM];

#define FCNS_COUNT 10
void (*const FcnPtr[FCNS_COUNT])(void) = {
    read_manual,  read_file,        find_rollnum,   find_firstname,
    find_coureid, totalnum_student, delete_rollnum, update_rollnum,
    show_all,     exit_all};

void Disp_Options(void) {

  printf("\nChoose of the following options:");
  printf("\n\t 1: Add student details manually");
  printf("\n\t 2: Add student details from text file");
  printf("\n\t 3: Find student details by Roll Number");
  printf("\n\t 4: Find student details by First Name");
  printf("\n\t 5: Find student details by Course ID");
  printf("\n\t 6: Find total numbers of students");
  printf("\n\t 7: Delete student details by Roll Number");
  printf("\n\t 8: Update student details by Roll Number");
  printf("\n\t 9: Show all information");
  printf("\n\t10: To Exit");
  printf("\nEnter Option Number: ");
}

#define BUF 3
int main() {
  printf("\t**Welcome to the student management system**");
  Disp_Options();
  char temp_text[BUF];
  char loopflag = 1;

  while (loopflag) {
    fgets(temp_text, BUF, stdin);
    printf("\n>>>... Option %d\n", atoi(temp_text));

    if (((atoi(temp_text)) > FCNS_COUNT) ||
        ((atoi(temp_text)) < 0)) { /// incase of invalid choise
      printf("\n\tInvalid choise, please choose value between 1 and %d",
             FCNS_COUNT);
      continue;
    }

    FcnPtr[(atoi(temp_text) - 1)]();
    Disp_Options();
  }
}
