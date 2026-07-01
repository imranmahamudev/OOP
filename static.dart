class Student {
  static String? name;
  static int? roll;
  static double? tuition; //

  void printStudent() {
    print('name : $name');
    print('roll : $roll');
    print('tuition : $tuition'); //method to print the student details
  }
}

void main() {
  Student.name = 'Imran';
  Student.roll = 5;
  Student.tuition = 499.99;

  Student student1 = Student(); //object creation
  student1.printStudent();

  Student.name = 'Mahamud';
  Student.roll = 7;
  Student.tuition = 699.99;

  Student student2 = Student(); //object creation
  student2.printStudent();
}
