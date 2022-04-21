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

void read_file() {
  TYPE_IN_FILE line[MAX_LINE_LENGTH] = {0};
  uint8_t      index_line            = 0;
  uint8_t      line_order            = 0;
  TYPE_IN_FILE word[MAX_WORD_LENGTH] = {0};
  uint8_t      index_word            = 0;
  uint8_t      word_order            = 1;

  // Open file
  FILE *file = fopen(FILE_NAME_PRJ2, "r");
  if (!file) {
    perror(FILE_NAME_PRJ2);
    return;
  }

  while (fgets(line, MAX_LINE_LENGTH, file)) {
    while (line[index_line] != '\n') {
      if (line[index_line] != ' ') {
        word[index_word++] = line[index_line];
      }
      if ((line[index_line] == ' ' && index_word > 0) ||
          (line[index_line + 1] == '\n' &&
           index_word > 0)) {

        uint8_t retval =
            map_words(word_order, word, &(students[line_order]), line_order);
        if (3 == retval) {
          continue;
        }
        if (1 == retval) {
          line_order--;
        }
        memset(word, 0, sizeof(word));
        word_order++, index_word = 0;
      }
      index_line++;
    }
    word_order = 1, index_line = 0, line_order++;
  }
  fclose(file);
  printf("Student details added successfully!\n");
}

//[d]: enter student details manually
void read_manual(void) {
  TYPE_IN_FILE   line[MAX_LINE_LENGTH] = {0};
  uint8_t        index_line            = 0;
  static uint8_t line_order            = 0;
  TYPE_IN_FILE   word[MAX_WORD_LENGTH] = {0};
  uint8_t        index_word            = 0;
  uint8_t        word_order            = 1;

  if (line_order >= MAX_STUDENT_NUM) {
    printf("Buffer full...");
    return;
  }

  fgets(line, MAX_LINE_LENGTH, stdin);
  while (line[index_line] != '\n') {
    if (line[index_line] != ' ') { // get word
      word[index_word++] = line[index_line];
    }
    if ((line[index_line] == ' ' && index_word > 0) ||
        (line[index_line + 1] == '\n' &&
         index_word > 0)) { // dump word if next char is space or newline.
      uint8_t retval =
          map_words(word_order, word, &(students[line_order]), line_order);
      if (3 == retval) {
        continue;
      }
      if (1 == retval) {
        line_order--;
      }
      memset(word, 0, sizeof(word)); // reset word to receive next word
      word_order++, index_word = 0;
    }
    index_line++;
  }
  line_order++;

  printf("Student details added successfully!\n");
};

//[in progress]: search students by roll num, print details
void find_rollnum(void){

};

//[p]: search students by first name, print details
void find_firstname(void){

};

//[p]: search students by course id, print details
void find_coureid(void){

};

//[d ]: return total number of students
void totalnum_student(void) {
  volatile uint8_t current = 0;

  while (atoi(students[current].rollnum) != 0) {
    current++;
  }

  printf("Total number of students is: %d\n", current);
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
    printf("Student [%d]\n%s %s, Roll Number: %s, Courses:\n", current + 1,
           students[current].name_first, students[current].name_last,
           students[current].rollnum);

    printf("%s\t%s\t%s\t%s\t%s\n", students[current].course[0],
           students[current].course[1], students[current].course[2],
           students[current].course[3], students[current].course[4]);
    current++;
  } while (atoi(students[current].rollnum) != 0);
};

//[d]: exit all
void exit_all(void) {
  printf("Exit...\n");
  exit(0);
};
