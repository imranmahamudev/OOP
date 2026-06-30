class Student {
  /// class
  String? name;
  int? roll;
  double? tuitionFee;

  Student(x, y, z) {
    //Constructor
    name = x;
    roll = y;
    tuitionFee = z;
  }
  void show() {
    //print method
    print(name);
    print(roll);
    print(tuitionFee);
  }
}

void main() {
  Student demo = Student('Imran', 10, 499.99); // object
  demo.show(); //print method + object
}
