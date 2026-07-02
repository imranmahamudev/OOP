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


  void showInfo() {
    print('name : $_name');
    print('age : $_age');
  }
}
void main() {
  Student demo = Student();
  demo._name = 'Imran';
  demo._age = 30;
  demo.showInfo();
}