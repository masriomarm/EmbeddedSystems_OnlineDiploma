/**
 * @file prj2_functions.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief
 * @version 0.1
 * @date 2022-04-19
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "main.h"

//[p]: enter student details manually
void read_manual(void){

};

//[p]: search students by roll num, print details
void find_rollnum(void){

};

//[p]: search students by first name, print details
void find_firstname(void){

};

//[p]: search students by course id, print details
void find_coureid(void){

};

//[p]: return total number of students
void totalnum_student(void){

};

//[p]: delete student with the following roll num
void delete_rollnum(void){

};

//[p]: update student with the following roll num
void update_rollnum(void){

};

//[d]: show all students
/**
 * @brief print student details until the first null student.
 *
 */
void show_all(void) {

  uint8_t current = 0;
  do {
    printf("Student [%d]\n%s %s, Roll Number: %s, Courses:\n", current + 1, students[current].name_first, students[current].name_last, students[current].rollnum);

    printf("%s\t%s\t%s\t%s\t%s\n", students[current].course[0],
           students[current].course[1], students[current].course[2],
           students[current].course[3], students[current].course[4]);
    current++;
  } while (atoi(students[current].rollnum) != 0);
};

//[d]: exit all
void exit_all(void){
  printf("Exit...");
  exit(0);
};
