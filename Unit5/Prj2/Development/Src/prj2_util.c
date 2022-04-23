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

//[done]: read from file and map data.

uint8_t map_words(TYPE_IN_FILE order, const char *src, student_data_t *dest_S,
                  TYPE_IN_FILE studen_order) {
  if (order <= 0 || order > COURSE_LENGTH + ITEMS_BEFORE_COURSE)
    return 2;

  switch (order) {
    case 1:
      if (0 >= strtol(src, NULL, 10)) {
        printf("roll number must be digit greater than 0\n");
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
  for (uint8_t i = 0; i < student_order; i++) {
    if (!strcmp(src, students[i].rollnum)) {
      return 1;
    }
  }
  return 0;
}

void student_show(uint8_t indx) {
  printf("Student [%d]\n%s %s, Roll Number: %s, Courses:\n", indx + 1,
         students[indx].name_first, students[indx].name_last,
         students[indx].rollnum);

  printf("%s\t%s\t%s\t%s\t%s\n", students[indx].course[0],
         students[indx].course[1], students[indx].course[2],
         students[indx].course[3], students[indx].course[4]);

  return;
}

int digit_input(const char *txt) {
  printf("%s", txt);
  char temp[5];
  fgets(temp, sizeof(temp), stdin);
  return atoi(temp);
}

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
  printf("\n\t10: To Exit\n");
}
