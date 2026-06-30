void main() {
  for (var i = 0; i < 5; i++) {
    print("Imran: $i");
  }

  for (int i = 2; i < 8; i += 2) {
    print("Even number: $i");
  }
  // for Loop with List
  List<String> fruits = ["apple", "mango", "lichi"];
  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  // for-in Loop with List
  for (var fruit in fruits) {
    print(fruit);
  }

  // for each Loop with List
  fruits.forEach((fruit) {
    print(fruit);
  });
}
