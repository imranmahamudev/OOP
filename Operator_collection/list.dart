void main() {
  // একটি লিস্ট তৈরি করা
  //List<dynamic> myList = [1, 'Hello', true, 3.14];
  //print(myList); // print the list
  //for (var item in myList) {
  // print(item); // print syntax
  //}
  //List<int> numbers = [1, 2, 3, 4, 5];
  //for (var number in numbers) {
  //  print(number); // print syntax
  //}
  List<String> names = ['Alice', 'Bob', 'Tom', 'Charlie', 'David'];
  //print(names[1]); // list position checking
  // লিস্টে নতুন আইটেম যোগ করা
  names.add('Eve');
  //print(names); // নতুন আইটেম সহ লিস্ট প্রিন্ট করা

  names.addAll(['Tom', 'Jerry']);
  names.insert(2, 'Frank'); // নির্দিষ্ট অবস্থানে আইটেম যোগ করা
  //names.remove('Charlie'); // নির্দিষ্ট আইটেম সরানো
  //names.removeAt(0); // নির্দিষ্ট অবস্থান থেকে আইটেম সরানো
  //names.clear(); // লিস্ট খালি করা

  names.insert(3, 'Grace'); // নির্দিষ্ট অবস্থানে একাধিক আইটেম যোগ করা
  //names.sort(); // লিস্ট ক্রমানুসারে সাজানো
  //print(names); // ক্রমানুসারে সাজানো লিস্ট প্রিন্ট করা
  names.remove('Bob');
  names.removeAt(2); // নির্দিষ্ট আইটেম সরানো

  for (var name in names) {
    print(name); // একাধিক আইটেম যোগ করার পর লিস্ট প্রিন্ট করা
  }
  print(names.length); // লিস্টের দৈর্ঘ্য প্রিন্ট করা
}
