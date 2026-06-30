void main() {
  List<String> students = ['I', 'R', 'F', 'S', 'L', 'T', 'B', 'R'];
  //print(students);
  students.add('A');
  students.add('R');
  students.add('L');
  students.addAll(['A', 'B', 'C']);
  print(students.toSet().toList());
  // লিস্টকে সেটে রূপান্তর করা এবং আবার লিস্টে রূপান্তর করা
}
