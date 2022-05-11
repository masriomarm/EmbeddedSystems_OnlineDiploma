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

  student_vector v_stdudents;

  std::array<std::function<void(student_vector &)>, NUM_MODES> mode{
      prj2::read_manual,    prj2::read_file,      prj2::find_rollnum,
      prj2::find_firstname, prj2::find_course,    prj2::find_total,
      prj2::delete_rollnum, prj2::update_rollnum, prj2::show_all,
      prj2::terminate};

  std::cout << "\tWelcome to student management";
  do {
    prj2::Disp_Options();
    prj2::operation(mode,v_stdudents);
  } while (1);

  // mode[1](v_stdudents);
  // mode[3](v_stdudents);
  // mode[4](v_stdudents);
  /*   int option{0};
    std::cin >> option;
    mode[option-1](v_stdudents);
    std::cin >> option;
    mode[option-1](v_stdudents);
    std::cin >> option;
    mode[option-1](v_stdudents);
    std::cin >> option;
    mode[option-1](v_stdudents);
    std::cin >> option;
    mode[option-1](v_stdudents); */
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
