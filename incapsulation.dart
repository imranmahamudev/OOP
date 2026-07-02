class Student {
  String? _name;
  int? _age;

  //setters methods
  void setName(String name) {
    _name = name;
  }

  void setAge(int age) {
    _age = age;
  }

  // //getters methods
  // String? getName() {
  //   return _name;
  // }
  // int? getAge() {
  //   return _age;
  // }  

  void showInfo() {
    //setters methods
    print('name : $_name');
    print('age : $_age');
    //getters methods
    // print('name : ${getName()}');
    // print('age : ${getAge()}');
  }
}

void main() {
  Student demo = Student();
  demo.setName('Imran');
  demo.setAge(30);
  demo.showInfo();
}
