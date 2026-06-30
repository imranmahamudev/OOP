void main() {
  // একটি সেট তৈরি করা
  Set<String> mySet = {'Apple', 'Banana', 'Cherry'};

  // সেটে নতুন আইটেম যোগ করা
  mySet.add('Date');
  mySet.addAll({'Elderberry', 'Fig', 'Grape'});

  //mySet.remove('Banana'); // নির্দিষ্ট আইটেম সরানো
  mySet.contains('Cherry');
  // নির্দিষ্ট শর্ত অনুযায়ী আইটেম সরানো
  //mySet.clear(); // সেট খালি করা
  for (var item in mySet) {
    print(item); // সেট প্রিন্ট করা
  }
  print(mySet.length); // সেটের দৈর্ঘ্য প্রিন্ট করা

  var colours = {
    "red",
    "green",

    "blue",
    "yellow",
    "orange",
  }; // এটি একটি Set<String> হিসেবে গণ্য হবে
  print(colours); // সেট প্রিন্ট করা

  // Set Math — Unique to Sets
  Set<String> setA = {'A', 'B', 'C'};
  Set<String> setB = {'C', 'D', 'E'};
  setA.union(setB);
  print(setA.union(setB)); // সেটের ইউনিয়ন প্রিন্ট করা
  print(setA.intersection(setB)); // সেটের ইন্টারসেকশন প্রিন্ট করা
  print(setA.difference(setB)); // সেটের ডিফারেন্স প্রিন্ট করা
}
