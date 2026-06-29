void main() {
  String studentName = 'Rahim';
  int score = 75;
  String grade;

  print("Student Report:");
  print("Name: $studentName");
  print("Marks: $score");

  if (score >= 90 && score <= 100) {
    grade = "A";
  } else if (score >= 80 && score <= 89) {
    grade = "B";
  } else if (score >= 70 && score <= 79) {
    grade = "C";
  } else {
    grade = "F";
  }

  print("Grade: $grade");

  switch (grade) {
    case "A":
      print("Excellent Job");

    case "B":
      print("Good Job");

    case "C":
      print("Need Improvement");

    case "F":
      print("Failed");

    default:
      print("Grade not found");
  }
}
