/**
 * @file read_file.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief
 * @version 0.1
 * @date 2022-04-15
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdint.h>
#include <string.h>
#include <fstream>
#include <vector>

#define FILE_NAME_PRJ2 "data.txt"

#define MAX_LINE_LENGTH 256
#define MAX_WORD_LENGTH 20

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

#define MAX_LINE_LENGTH 256
#define MAX_WORD_LENGTH 20
#define MAX_STUDENT_NUM 10
#define MAX_STUDENT_BUF 5

student_data_t students[MAX_STUDENT_NUM];

std::vector<student_data_t> v_students(MAX_STUDENT_NUM);

void map_words(char, const char *, student_data_t *);

int main() {
  char line[MAX_LINE_LENGTH] = {0};
  uint8_t      index_line            = 0;
  uint8_t      line_order            = 0;
  char word[MAX_WORD_LENGTH] = {0};
  uint8_t      index_word            = 0;
  uint8_t      word_order            = 1;

  std::ifstream myfile;
  myfile.open("data.txt");

  // Open file
  FILE *file = fopen(FILE_NAME_PRJ2, "r");
  if (!file) {
    perror(FILE_NAME_PRJ2);
    return EXIT_FAILURE;
  }

  while (fgets(line, MAX_LINE_LENGTH, file)) {
    while (line[index_line] != '\n') {
      if (line[index_line] != ' ') {
        word[index_word++] = line[index_line];
      }
      if ((line[index_line] == ' ' && index_word > 0) ||
          (line[index_line + 1] == '\n' &&
           index_word > 0)) {
        map_words(word_order, word, &(students[line_order]));
        memset(word, 0, sizeof(word));
        word_order++, index_word = 0;
      }
      index_line++;
    }
    word_order = 1, index_line = 0, line_order++;
  }
  fclose(file);

    {
      uint8_t current = 0;
      do {
        printf("%s\t%s\t%s\t%s\n", students[current].rollnum,
               students[current].name_first, students[current].name_last,
               students[current].gpa);
        printf("%s\t%s\t%s\t%s\t%s\n", students[current].course[0],
               students[current].course[1], students[current].course[2],
               students[current].course[3], students[current].course[4]);
        current++;
      } while (atoi(students[current].rollnum) != 0);
    }
}

void map_words(char order, const char *src, student_data_t *dest_S) {

  if (order <= 0 || order > COURSE_LENGTH + ITEMS_BEFORE_COURSE)
    return;
  switch (order) {
    case 1:
      strncpy(dest_S->rollnum, src, strlen(src));
      break;
    case 2:
      strncpy(dest_S->name_first, src, strlen(src));
      break;
    case 3:
      strncpy(dest_S->name_last, src, strlen(src));
      break;
    case 4:
      strncpy(dest_S->gpa, src, strlen(src));
      break;
    default: {
      strncpy(dest_S->course[order - ITEMS_BEFORE_COURSE - 1], src,
              strlen(src));
      break;
    }
  }
}
