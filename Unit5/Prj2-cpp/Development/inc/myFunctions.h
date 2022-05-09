#ifndef MYFUNCTIONS_H_
#define MYFUNCTIONS_H_

#include "main.h"

class S_StduentData;
typedef std::vector<S_StduentData> student_vector;

namespace prj2 {

void read_manual(student_vector &vect);
void find_firstname(student_vector &vect);
void find_rollnum(student_vector &vect);
void read_file(student_vector &vect);
void show_all(student_vector &vect);
void Disp_Options(void);
void find_course(student_vector &vect);

// [p]: impelemnt find course
// pending: delete student with roll num
// [p]: update student with roll num
// [p]: find total number of students
// [p]: quit function

} // namespace prj2

#endif ///< MYFUNCTIONS_H_
