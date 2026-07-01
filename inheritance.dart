class Father {
  String? name;
  int? age;

  void displayInfo() {
    print('name : $name');
    print('age : $age');
  }
}

class Son extends Father {
  int roll = 101;

  @override
  void displayInfo() {
    // print('name : $name');
    // print('age : $age');
    super.displayInfo(); // Call the parent class method
    print('roll : $roll');
  }
}

void main() {
  Father demo = Father();
  demo.name = 'Imran';
  demo.age = 30;
  demo.displayInfo();

  Son demo2 = Son();
  demo2.roll = 101;
  demo2.name = 'Mahamud';
  demo2.age = 25;
  demo2.displayInfo();
}

// class Animal {
//   void makeSound() {
//     print("Animal makes a sound");
//   }
// }

// class Dog extends Animal {
//   // @override
//   void makeSound() {
//     super.makeSound(); // Call the parent class method
//     print("Dog barks");
//   }
// }

// class Cat extends Animal {
//   @override
//   void makeSound() {
//     super.makeSound(); // Call the parent class method
//     print("Cat meows");
//   }
// }

// void main() {
//   Animal myAnimal = Animal();
//   myAnimal.makeSound(); // Output: Animal makes a sound

//   Dog myDog = Dog();
//   myDog.makeSound(); // Output: Dog barks

//   Cat myCat = Cat();
//   myCat.makeSound(); // Output: Cat meows
// }
