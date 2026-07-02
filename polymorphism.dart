class Teacher {
  void display() {
    print('This is a teacher class');
  }

  String getName() {
    return 'This is a teacher class';
  }

  void showInfo() {
    print('No student information available.');
  }
}

class Student extends Teacher {
  String name = 'Imran';
  int age = 10;
  double height = 5.5;

  @override
  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  double getHeight() {
    return height;
  }

  @override
  void showInfo() {
    print('name : ${getName()}');
    print('age : ${getAge()}');
    print('height : ${getHeight()}');
  }
}

class Student1 extends Teacher {
  String name = 'Romen';
  int age = 105;
  double height = 5.9;

  @override
  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  double getHeight() {
    return height;
  }

  @override
  void showInfo() {
    print('name : ${getName()}');
    print('age : ${getAge()}');
    print('height : ${getHeight()}');
  }
}

class Student2 extends Teacher {
  String name = 'Mahmud';
  int age = 15;
  double height = 5.7;

  @override
  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  double getHeight() {
    return height;
  }

  @override
  void showInfo() {
    print('name : ${getName()}');
    print('age : ${getAge()}');
    print('height : ${getHeight()}');
  }
}

void main() {
  Teacher demo;
  demo = Student();
  demo.showInfo();

  demo = Student1();
  demo.showInfo();

  demo = Student2();
  demo.showInfo();
}
