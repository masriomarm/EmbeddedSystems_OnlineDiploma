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

#include "main.h"

//[d]: read from file and map data.

uint8_t map_words(TYPE_IN_FILE order, const char *src, student_data_t *dest_S,
                  TYPE_IN_FILE studen_order) {
  if (order <= 0 || order > COURSE_LENGTH + ITEMS_BEFORE_COURSE)
    return 2;
  switch (order) {
    case 1:
      if (0 >= strtol(src, NULL, 10)) {
        printf("roll number must be digit\n");
        return 3;
      }
      if (rollnum_fail(src, dest_S, studen_order)) {
        printf("Roll Number %s is already taken!\n", src);
        return 1;
      }
      strncpy(dest_S->rollnum, src, strlen(src));
      printf("Roll Number %s saved successfully!\n", src);
      break;
    case 2: strncpy(dest_S->name_first, src, strlen(src)); break;
    case 3: strncpy(dest_S->name_last, src, strlen(src)); break;
    case 4: strncpy(dest_S->gpa, src, strlen(src)); break;
    default: {
      strncpy(dest_S->course[order - ITEMS_BEFORE_COURSE - 1], src,
              strlen(src));
      break;
    }
  }
  return 0;
}

uint8_t rollnum_fail(const char *src, student_data_t *dest_S,
                     TYPE_IN_FILE student_order) {

  //[d]: loop from beginning of students to the order
  //[d]: compare each roll num to src while looping
  //[d]: return true if match

  for (uint8_t i = 0; i < student_order; i++) {
    if (!strcmp(src, students[i].rollnum)) {
      return 1;
    }
  }
  return 0;
}
