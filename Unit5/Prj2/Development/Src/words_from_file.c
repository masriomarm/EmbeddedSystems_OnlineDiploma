#include "stdint.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
// #include "strings.h"

#define MAX_LINE_LENGTH     256
#define MAX_WORD_LENGTH     20
#define TYPE_IN_FILE        unsigned char

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
  char course[COURSE_LENGTH][2];
} student_data_t;

student_data_t student;

void map_words(TYPE_IN_FILE, TYPE_IN_FILE *);

int main() {
  TYPE_IN_FILE line[MAX_LINE_LENGTH] = {0};
  TYPE_IN_FILE index_line            = 0;
  TYPE_IN_FILE word[MAX_WORD_LENGTH] = {0};
  TYPE_IN_FILE index_word            = 0;
  TYPE_IN_FILE word_order            = 1;

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
        map_words(word_order, word); // qbzero(word,sizeof(word)); // explicit_bzero(word, sizeof(word));
        memset(word, 0, sizeof(word)); // reset word to receive next word
        word_order++;
        index_word = 0;
      }
      index_line++;
    }
    word_order = 1;
    index_line = 0;
  }
  fclose(file);
}

void map_words(TYPE_IN_FILE order, TYPE_IN_FILE *word) {

  if (order <= 0 || order > COURSE_LENGTH + ITEMS_BEFORE_COURSE)
    return;
  switch (order) {
    case 1: strcpy(student.rollnum, word); break;
    case 2: strcpy(student.name_first, word); break;
    case 3: strcpy(student.name_last, word); break;
    case 4: strcpy(student.gpa, word); break;
    default: {
      strcpy(student.course[order - ITEMS_BEFORE_COURSE - 1], word);
      break;
    }
  }
}
