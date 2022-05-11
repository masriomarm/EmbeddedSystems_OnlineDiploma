#ifndef MYFUNCTIONS_H_
#define MYFUNCTIONS_H_

#include "main.h"

constexpr int NUM_MODES{10};

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
void find_total(student_vector &vect);
void delete_rollnum(student_vector &vect);
void update_rollnum(student_vector &vect);
void terminate(student_vector &vect);
void operation(
    std::array<std::function<void(student_vector &)>, NUM_MODES> mode,
    student_vector                                              &vect);

} // namespace prj2

#endif ///< MYFUNCTIONS_H_
