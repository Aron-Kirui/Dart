// Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printStudentInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printTeacherInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Third class to create student and teacher objects
class School {
  void printInformation() {
    // Create student object
    Student student = Student('John Doe', 15, 9);
    // Create teacher object
    Teacher teacher = Teacher('Jane Smith', 35, 'Mathematics');

    // Print student information
    student.printStudentInfo();
    print('\n');
    // Print teacher information
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create school object
  School school = School();
  // Call method to print information
  school.printInformation();
}
