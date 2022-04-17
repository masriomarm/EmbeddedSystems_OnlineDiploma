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

#include "read_file.h"
#include <vector>
//[d]: read from file and map data.

#define MAX_LINE_LENGTH 256
#define MAX_WORD_LENGTH 20
#define MAX_STUDENT_NUM 10
#define MAX_STUDENT_BUF 5
#define TYPE_IN_FILE    char

student_data_t students[MAX_STUDENT_NUM];
student_data_t students_buffer[MAX_STUDENT_BUF];
std::vector<student_data_t> v_students{};

void map_words(TYPE_IN_FILE, const char *, student_data_t *);

int main() {
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
    return EXIT_FAILURE;
  }

  // Get each line until there are none left
  // extract words from each line
  // assign each word to its correspending

  while (fgets(line, MAX_LINE_LENGTH, file)) {
    while (line[index_line] != '\n') {
      if (line[index_line] != ' ') { // get word
        word[index_word++] = line[index_line];
      }
      if ((line[index_line] == ' ' && index_word > 0) ||
          (line[index_line + 1] == '\n' &&
           index_word > 0)) { // dump word if next char is space or newline.
        map_words(word_order, word, &(students[line_order]));
        memset(word, 0, sizeof(word)); // reset word to receive next word
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

void map_words(TYPE_IN_FILE order, const char *src, student_data_t *dest_S) {

  if (order <= 0 || order > COURSE_LENGTH + ITEMS_BEFORE_COURSE)
    return;
  switch (order) {
    case 1:
      // strcpy(dest_S->rollnum, src);
      strncpy(dest_S->rollnum, src, strlen(src));
      break;
    case 2:
      // strcpy(dest_S->name_first, src);
      strncpy(dest_S->name_first, src, strlen(src));
      break;
    case 3:
      // strcpy(dest_S->name_last, src);
      strncpy(dest_S->name_last, src, strlen(src));
      break;
    case 4:
      // strcpy(dest_S->gpa, src);
      strncpy(dest_S->gpa, src, strlen(src));
      break;
    default: {
      // strcpy(dest_S->course[order - ITEMS_BEFORE_COURSE - 1], src);
      strncpy(dest_S->course[order - ITEMS_BEFORE_COURSE - 1], src,
              strlen(src));
      break;
    }
  }
}
