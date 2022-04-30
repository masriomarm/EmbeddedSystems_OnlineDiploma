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
//[done]: read data from ./data.txt file
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

  for (size_t i = 0; i < MAX_STUDENT_NUM; i++) {
    if ((atoi(students[i].rollnum)) == 0) {
      line_order = i;
      break;
    }
  }

  while (fgets(line, MAX_LINE_LENGTH, file)) {
    while (line[index_line] != '\n') {
      if (line[index_line] != ' ') {
        word[index_word++] = line[index_line];
      }
      if ((line[index_line] == ' ' && index_word > 0) ||
          (line[index_line + 1] == '\n' && index_word > 0)) {

        uint8_t retval =
            map_words(word_order, word, &(students[line_order]), line_order);
        memset(word, 0, sizeof(word));
        word_order++, index_word = 0;
        if (3 == retval) {
          break;
        }
        if (1 == retval) {
          break;
        }
      }
      index_line++;
    }
    word_order = 1, index_line = 0, line_order++;
  }
  fclose(file);
  printf("Student details added successfully!\n");
}

//[done]: enter student details manually
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

  uint8_t indx = 0;
  for (size_t i = 0; i < MAX_STUDENT_NUM; i++) {
    if ((atoi(students[i].rollnum)) == 0) {
      indx = i;
      break;
    }
  }

  printf("Enter student details... \n");
  fgets(line, MAX_LINE_LENGTH, stdin);
  while (line[index_line] != '\n') {
    if (line[index_line] != ' ') { // get word
      word[index_word++] = line[index_line];
    }
    if ((line[index_line] == ' ' && index_word > 0) ||
        (line[index_line + 1] == '\n' &&
         index_word > 0)) { // dump word if next char is space or newline.
      uint8_t retval = map_words(word_order, word, &(students[indx]), indx);
      if (3 == retval) {
        break;
      }
      if (1 == retval) {
        break;
      }
      memset(word, 0, sizeof(word)); // reset word to receive next word
      word_order++, index_word = 0;
    }
    index_line++;
  }
  indx++;
};

//[done]: search students by roll num, print details
void find_rollnum(void) {
  int roll = digit_input("Enter roll number to be found: ");
  printf("\nSearching roll number %d ...\n", roll);

  uint8_t indx = 0;
  for (size_t i = 0; i < MAX_STUDENT_NUM; i++) {
    if ((atoi(students[i].rollnum)) == roll) {
      indx = i;
      printf("found ...\n");
      student_show(indx);
      return;
    }
  }

  printf("No match for Roll number %d ...\n", roll);
};

//[done]: search students by first name, print details
void find_firstname(void) {
  char temp[NAME_FIRST_LENGTH] = {0};
  printf("\nEnter student first name to find: ");
  fgets(temp, NAME_FIRST_LENGTH, stdin);

  uint8_t indx = 0;
  for (size_t i = 0; i < MAX_STUDENT_NUM; i++) {
    if (!(strncmp(students[i].name_first, temp, strlen(temp) - 1))) {
      indx = i;
      printf("found ...\n");
      student_show(indx);
      return;
    }
  }

  printf("\n%s not found", temp);
};

//[done]: search students by course id, print details
void find_course_id(void) {
  int temp = digit_input("\nEtner course id to find students enrolled: ");

  size_t i = 0;
  for (i = 0; i < MAX_STUDENT_NUM; i++) {
    for (size_t course_index = 0; course_index < COURSE_LENGTH;
         course_index++) {
      if (atoi(students[i].rollnum) == 0) {
        continue;
      }

      if (temp == atoi(students[i].course[course_index])) {
        printf("found ...\n");
        student_show(i);
        break;
      }
    }

    if (i == MAX_STUDENT_NUM - 1) {
      return;
    }
  }

  printf("\nNo match for course id %d ...", temp);
};

//[done]: return total number of students
void totalnum_student(void) {
  volatile uint8_t current = 0;

  while (atoi(students[current].rollnum) != 0) {
    current++;
  }

  printf("Total number of students is: %d\n", current);
};

//[done]: delete student with the following roll num
void delete_rollnum(void) {
  int roll = digit_input("Enter roll number to be deleted: ");
  printf("\nSearching roll number %d ...\n", roll);

  for (size_t i = 0; i < MAX_STUDENT_NUM; i++) {
    if ((atoi(students[i].rollnum)) == roll) {
      printf("found ...\n");
      memset(&students[i], 0, sizeof(students[i]));
      return;
    }
  }

  printf("No match for Roll number %d ...\n", roll);
};

//[done]: update student with the following roll num
void update_rollnum(void) {
  int roll = digit_input("Enter roll number to be updated: ");
  printf("\nSearching roll number %d ...\n", roll);

  for (size_t i = 0; i < MAX_STUDENT_NUM; i++) {
    if ((atoi(students[i].rollnum)) == roll) {
      printf("found ...\n");
      memset(&students[i], 0, sizeof(students[i]));
      read_manual();
      return;
    }
  }

  printf("No match for Roll number %d ...\n", roll);
};

//[done]: show all students
/**
 * @brief print student details until the first null student.
 *
 */
void show_all(void) {
  for (int i = 0; i < MAX_STUDENT_NUM; i++) {
    if (atoi(students[i].rollnum) != 0) {
      printf("Student [%d]\n%s %s, Roll Number: %s, Courses:\n", i + 1,
             students[i].name_first, students[i].name_last,
             students[i].rollnum);

      printf("%s\t%s\t%s\t%s\t%s\n", students[i].course[0],
             students[i].course[1], students[i].course[2],
             students[i].course[3], students[i].course[4]);
    }
  }
};

//[done]: exit all
void exit_all(void) {
  printf("Exit...\n");
  exit(0);
};
