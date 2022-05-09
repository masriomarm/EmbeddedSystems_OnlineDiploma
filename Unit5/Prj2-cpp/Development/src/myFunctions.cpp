#include "../inc/main.h"

void prj2::read_manual(student_vector &vect) {

  student_data_t temp_student;
  temp_student.data_set();
  if (vect.size() == 0 && temp_student.valid_rollnum()) {
    vect.push_back(temp_student);
    return;
  } else {
    if (temp_student.valid_rollnum() && temp_student.unique_rollnum(vect)) {
      vect.push_back(temp_student);
    } else {
      std::cout << " roll num is already taken!\n";
    }
  }
}

void prj2::find_firstname(student_vector &vect) {
  std::string tofind;
  std::cout << "enter name to be found: ";
  std::cin >> tofind;

  auto it = vect.begin();
  while (it != vect.end()) {
    it = std::find_if(it, vect.end(), [&tofind](const S_StduentData &lhs) {
      return lhs.get_name_first() == tofind;
    });
    if (it != vect.end()) {
      it->get_student();
      ++it;
    }
  }
}

// pending: implement course id search
void prj2::find_course(student_vector &vect) {
  std::string tofind;
  std::cout << "enter name to be found: ";
  std::cin >> tofind;

  bool found = false;
  for (auto it : vect) {
    for (size_t i = 0; i < COURSE_LENGTH; i++) {
      if (it.course[i] == tofind) {
        it.get_student();
        found = true;
      }
    }
    if (!found && it.rollnum == vect.at(vect.size() - 1).rollnum) {
      std::cout << tofind << " not found\n";
    }
  }
}

void prj2::find_rollnum(student_vector &vect) {
  std::string tofind;
  std::cout << "enter name to be found: ";
  std::cin >> tofind;
  (std::find_if(vect.begin(), vect.end(), [&tofind](const S_StduentData &lhs) {
    return lhs.get_rollnum() == tofind;
  }))->get_student();
}

void prj2::read_file(student_vector &vect) {
  std::ifstream inpfile("../data/data.txt");
  if (!inpfile.is_open()) {
    throw std::runtime_error("couldn't open data file at ../data/");
  }

  if (inpfile.is_open()) {
    student_data_t temp;
    for (std::string str; std::getline(inpfile, str);) {
      temp.map_line(str);
      if (vect.size() == 0 ||
          (temp.valid_rollnum() && temp.unique_rollnum(vect))) {
        vect.push_back(temp);
        std::cout << "roll num " << temp.get_rollnum()
                  << " added successfully!\n";
      } else {
        std::cout << "roll num " << temp.get_rollnum()
                  << " is already taken!\n";
      }
    }
  }
}

void prj2::show_all(student_vector &vect) {
  for (auto it : vect) {
    it.get_student();
  }
}

void prj2::Disp_Options(void) {
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
