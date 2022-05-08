#include "student.h"

S_StduentData::S_StduentData() {

  input_format.assign("(.\\S*) (.\\S*) (.\\S*) (.\\S*) (.\\S*) (.\\S*) (.\\S*) "
                      "(.\\S*) (.\\S*)");
  numbers_plusminus.assign("((-\\s?)?(\\+\\s?)?\\d+)");
  number_float.assign("(\\d+)(\\.?)(\\d*)");
  name_plain.assign("([A-Z]?)([a-z]+)");
}

bool S_StduentData::operator<(const S_StduentData &obj) const {
  return (std::stoi(rollnum) < (std::stoi(obj.rollnum)));
}

void S_StduentData::get_student(void) {
  int col{10};
  std::cout << std::left;
  std::cout << std::setw(col / 2) << rollnum << std::setw(col) << name_first
            << std::setw(col) << name_last << "GPA: " << std::setw(col / 2)
            << gpa << std::setw(col) << "Courses:";
  std::cout << std::setw(3) << course[0] << std::setw(3) << course[1]
            << std::setw(3) << course[2] << std::setw(3) << course[3]
            << std::setw(3) << course[4] << "\n";
}

void S_StduentData::map_line(std::string line) {

  std::smatch sm;
  if (std::regex_search(line, sm, input_format)) {
    if (sm.size() == 10) {
      rollnum    = sm[1];
      name_first = sm[2];
      name_last  = sm[3];
      gpa        = sm[4];
      course[0]  = sm[5];
      course[1]  = sm[6];
      course[2]  = sm[7];
      course[3]  = sm[8];
      course[4]  = sm[9];
    } else {
      std::cout << "line: "
                << "\"" << line << "\""
                << " was ignored";
    }
  }
}

void S_StduentData::data_set(void) {
  std::cout << "Enter student details\n";
  std::cin >> rollnum >> std::ws >> name_first >> std::ws >> name_last >>
      std::ws >> gpa >> std::ws >> course[0] >> std::ws >> course[1] >>
      std::ws >> course[2] >> std::ws >> course[3] >> std::ws >> course[4];
}

std::string S_StduentData::get_rollnum(void) const {
  return rollnum;
}

std::string S_StduentData::get_name_first(void) const {
  return name_first;
}

std::regex S_StduentData::get_regex_number(void) const {
  return numbers_plusminus;
}

std::regex S_StduentData::get_regex_float(void) const {
  return number_float;
}

std::string S_StduentData::get_gpa(void) const {
  return gpa;
}

std::regex S_StduentData::get_regex_name(void) const {
  return name_plain;
}

bool S_StduentData::valid_rollnum(void) {
  if (std::regex_match(rollnum, numbers_plusminus)) {
    return true;
  } else {
    std::cout << "roll number should be numbers only.\n";
    return false;
  }
}
bool S_StduentData::valid_gpa(void) {
  if (std::regex_match(gpa, number_float)) {
    return true;
  } else {
    std::cout << "unvalid gpa.\n";
    return false;
  }
}
bool S_StduentData::valid_name(void) {
  if (std::regex_match(name_first, name_plain)) {
    return true;
  } else {
    std::cout << "unvalid name.\n";
    return false;
  }
}
bool S_StduentData::unique_rollnum(const student_vector &vect) {

  for (auto it : vect) {
    if (it.rollnum == rollnum) {
      return false;
    }
  }
  return true;
}
