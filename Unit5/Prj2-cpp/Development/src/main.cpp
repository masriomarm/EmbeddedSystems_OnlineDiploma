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

#include "../inc/main.h"

int main() {
  char    line[MAX_LINE_LENGTH] = {0};
  uint8_t index_line            = 0;
  uint8_t line_order            = 0;
  char    word[MAX_WORD_LENGTH] = {0};
  uint8_t index_word            = 0;
  uint8_t word_order            = 1;

  student_vector v_stdudents;
  student_data_t temp_student;

  auto it_vec_student = v_stdudents.begin();

  std::array<std::function<void(student_vector &)>, 10> mode{
      prj2::read_manual, prj2::read_file, prj2::find_rollnum,
      prj2::find_firstname, prj2::show_all};

  mode[1](v_stdudents);
  mode[3](v_stdudents);

/*   for (auto it : v_stdudents) {
    it.get_student();
  }

  std::sort(v_stdudents.rbegin(), v_stdudents.rend(),
            [](const S_StduentData &lhs, const S_StduentData &rhs) {
              return std::stod(lhs.get_gpa()) < std::stod(rhs.get_gpa());
            });
  for (auto it : v_stdudents) {
    it.get_student();
  }

  std::sort(v_stdudents.begin(), v_stdudents.end());
  for (auto it : v_stdudents) {
    it.get_student();
  }
  std::cout << "\n"; */
}
