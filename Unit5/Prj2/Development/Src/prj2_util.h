#ifndef PRJ2_UTIL_H_
#define PRJ2_UTIL_H_

#define FILE_NAME_PRJ2 "data.txt"
#define TYPE_IN_FILE   char

uint8_t map_words(char, const char *, student_data_t *, char);
uint8_t rollnum_fail(const char *, student_data_t *, char);
void    student_show(uint8_t current);
int     digit_input(const char *txt);
void    Disp_Options(void);

#endif ///< PRJ2_UTIL_H_
