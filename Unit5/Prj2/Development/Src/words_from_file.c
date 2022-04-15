#include "stdint.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
// #include "strings.h"

//[d]: read from file and map data.
//[p]: verify rollnum is unique across students
//[p]: start casting queue.

#define MAX_LINE_LENGTH     256
#define MAX_WORD_LENGTH     20
#define MAX_STUDENT_NUM     10
#define MAX_STUDENT_BUF     5
#define TYPE_IN_FILE        char

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
student_data_t students[MAX_STUDENT_NUM];
student_data_t students_buffer[MAX_STUDENT_BUF];

void map_words(TYPE_IN_FILE, const char *, student_data_t *);

int main() {
  TYPE_IN_FILE line[MAX_LINE_LENGTH] = {0};
  uint8_t      index_line            = 0;
  uint8_t      line_order            = 0;
  TYPE_IN_FILE word[MAX_WORD_LENGTH] = {0};
  uint8_t      index_word            = 0;
  uint8_t      word_order            = 1;

  // Open file
  FILE *file = fopen("file.txt", "r");
  if (!file) {
    perror("file.txt");
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
        word_order++; index_word = 0;
      }
      index_line++;
    }
    word_order = 1;
    index_line = 0;
    line_order++;
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
