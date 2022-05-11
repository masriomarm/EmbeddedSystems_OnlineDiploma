#ifndef STUDENT_H_
#define STUDENT_H_

#include <array>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <regex>
#include <string>
#include <vector>

#include "myFunctions.h"

#define FILE_NAME_PRJ2      "data/data.txt"

#define MAX_LINE_LENGTH     256
#define MAX_WORD_LENGTH     20
#define MAX_STUDENT_NUM     10
#define MAX_STUDENT_BUF     5

#define ROLL_NUM_LENGTH     3
#define NAME_FIRST_LENGTH   15
#define NAME_LAST_LENGTH    15
#define GPA_LENGTH          5
#define COURSE_LENGTH       5
#define ITEMS_BEFORE_COURSE 4

typedef class S_StduentData {
private:
  std::string rollnum;
  std::string name_first;
  std::string name_last;
  std::string gpa;

  std::regex input_format;
  std::regex numbers_plusminus;
  std::regex number_float;
  std::regex name_plain;

  std::array<std::string, COURSE_LENGTH> course;

public:
  S_StduentData();

  bool operator<(const S_StduentData &obj) const;

  friend void prj2::find_course(student_vector &vect);

  bool unique_rollnum(const std::vector<S_StduentData> &vect);
  bool valid_rollnum(void);
  bool valid_gpa(void);
  bool valid_name(void);

  void data_set(void);
  void get_student(void);
  void map_line(std::string);

  bool push_to(std::vector<S_StduentData> &vect);

  std::string get_rollnum(void) const;
  std::string get_name_first(void) const;
  std::string get_gpa(void) const;
  std::regex  get_regex_number(void) const;
  std::regex  get_regex_float(void) const;
  std::regex  get_regex_name(void) const;
} student_data_t;

typedef std::vector<S_StduentData> student_vector;

void read_manual(student_vector &vect);

#endif ///< STUDENT_H_
