class Student {
  String? name;
  int? age;
  double? tuition;

  Student(String? name, int? age, double? tuition) {
    this.name = name;
    this.age = age;
    this.tuition = tuition;
  }
}

void main() {
  Student demoStudent = Student("John Doe", 20, 15000.0);
  print("Name: ${demoStudent.name}");
  print("Age: ${demoStudent.age}");
  print("Tuition: ${demoStudent.tuition}");
}
