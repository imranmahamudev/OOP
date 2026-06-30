void main() {
  bool isLightGreen = true; // ট্রাফিক লাইট সবুজ
  bool isRoadClear = false; // রাস্তা ফাঁকা নয়

  // && (AND) অপারেটর: উভয় শর্তই true হতে হবে

  bool canGo = isLightGreen && isRoadClear;
  print('Can I go? $canGo');

  // আউটপুট: false (কারণ রাস্তা ফাঁকা নয়)
  // || (OR) অপারেটর: যেকোনো একটি শর্ত true হলেই হবে

  bool canMove = isLightGreen || isRoadClear;
  print('Can I move? $canMove');

  // আউটপুট: true (কারণ লাইট সবুজ)
  // ! (NOT) অপারেটর: মান উল্টে দেয়

  print('Is light NOT green? ${!isLightGreen}');

  // আউটপুট: false
}
