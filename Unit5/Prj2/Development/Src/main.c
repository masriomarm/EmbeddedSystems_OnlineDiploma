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

#define BUF 3
int main() {
  printf("\t**Welcome to the student management system**");
  Disp_Options();

  char loopflag = 1;
  while (loopflag) {
    int option = digit_input("Enter Option Number: ");
    printf("\n>>>... Option %d\n", option);

    if (((option) > FCNS_COUNT) ||
        ((option) < 0)) { /// incase of invalid choise
      printf("\n\tInvalid choise, please choose value between 1 and %d",
             FCNS_COUNT);
      continue;
    }

    FcnPtr[(option - 1)]();
    Disp_Options();
  }
}
