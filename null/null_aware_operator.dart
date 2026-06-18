void main() {
  // ১. ?. (Null-aware access)

  String? name; // শুরুতে এটি null
  // name.length লিখলে এরর দিত, কিন্তু ?. এরর দেয় না।
  print(name?.length); // আউটপুট: null (ক্র্যাশ করবে না)

  // ২. ?? (Null-coalescing)

  String? username;
  String displayName = username ?? 'Guest';
  print(displayName);
  print(displayName?.length); // আউটপুট: 5 (যেহেতু username null ছিল)

  // ৩. ??= (Null-aware assignment)

  int? score;
  score ??= 10;
  print(score); // আউটপুট: 10 (যেহেতু null ছিল, তাই ১০ সেট হলো)
  score ??= 20;
  print(score); // আউটপুট: 10 (যেহেতু আগে থেকেই ১০ আছে, তাই ২০ সেট হয়নি)
}
