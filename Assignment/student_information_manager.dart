import 'dart:io';

/// Abstract Class
abstract class Person {
  void displayInfo();
}

/// Student Class
class Student extends Person {
  // Encapsulation (Private Fields)
  String _id;
  String _name;
  int _age;

  /// Constructor
  Student(this._id, this._name, this._age);

  // Getters (Arrow Function)
  String get id => _id;
  String get name => _name;
  int get age => _age;

  @override
  void displayInfo() {
    print('ID   : $_id');
    print('Name : $_name');
    print('Age  : $_age');
    print('-------------------');
  }
}

class StudentManager {
  List<Student> students = [];

  /// Add Student
  void addStudent() {
    print('\n===== Add Student =====');

    stdout.write('Enter ID: ');
    String id = stdin.readLineSync() ?? '';

    stdout.write('Enter Name: ');
    String name = stdin.readLineSync() ?? '';

    stdout.write('Enter Age: ');
    int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    students.add(Student(id, name, age));

    print('\nStudent Added Successfully!');
  }

  /// View Students
  void viewStudents() {
    print('\n===== Student List =====');

    if (students.isEmpty) {
      print('No students found.');
      return;
    }

    for (var student in students) {
      student.displayInfo();
    }
  }

  /// Search Student
  void searchStudent() {
    print('\n===== Search Student =====');

    stdout.write('Enter Student ID: ');
    String searchId = stdin.readLineSync() ?? '';

    Student? foundStudent;

    for (var student in students) {
      if (student.id == searchId) {
        foundStudent = student;
        break;
      }
    }

    if (foundStudent != null) {
      print('\nStudent Found:');
      foundStudent.displayInfo();
    } else {
      print('Student not found.');
    }
  }

  /// Delete Student
  void deleteStudent() {
    print('\n===== Delete Student =====');

    stdout.write('Enter Student ID: ');
    String deleteId = stdin.readLineSync() ?? '';

    int beforeCount = students.length;

    // Anonymous Function
    students.removeWhere((student) {
      return student.id == deleteId;
    });

    if (students.length < beforeCount) {
      print('Student deleted successfully!');
    } else {
      print('Student not found.');
    }
  }
}

void main() {
  StudentManager manager = StudentManager();

  while (true) {
    print('\n===== Student Information Manager =====');
    print('1. Add Student');
    print('2. View Students');
    print('3. Search Student');
    print('4. Delete Student');
    print('5. Exit');

    stdout.write('\nChoose: ');
    int choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (choice) {
      case 1:
        manager.addStudent();
        break;

      case 2:
        manager.viewStudents();
        break;

      case 3:
        manager.searchStudent();
        break;

      case 4:
        manager.deleteStudent();
        break;

      case 5:
        print('\nThank You!');
        return;

      default:
        print('Invalid Choice!');
    }
  }
}
