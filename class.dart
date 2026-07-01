class Student {
  String? name;
  int? roll;
  double? tuitionFee;

  void demoStudent() {
    ////method
    print('name : $name');
    print('roll : $roll');
    print('tuitionFee : $tuitionFee');
  }
}

void main() {
  Student student = Student(); //object creation
  student.name = 'Imran';
  student.roll = 5;
  student.tuitionFee = 499.99;

  Student student2 = Student(); //object creation
  student2.name = 'Mahamud';
  student2.roll = 6;
  student2.tuitionFee = 599.99;
  student2.demoStudent();
  student.demoStudent();
}
