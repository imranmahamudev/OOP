import 'dart:io';

// ===============================
// const ব্যবহার (Project Requirement)
// ===============================
const String appTitle = "Student Grader v1.0";

void main() {
  // ===============================
  // final Set ব্যবহার
  // ===============================
  final Set<String> availableSubjects = {"Math", "English", "Science", "ICT"};

  // ===============================
  // List<Map> ব্যবহার
  // ===============================
  var students = <Map<String, dynamic>>[];

  var running = true;

  // ===============================
  // do-while loop ব্যবহার
  // ===============================
  do {
    print("""
=========================
$appTitle
=========================
1. Add Student
2. Record Score
3. Add Bonus Points
4. Add Comment
5. View All Students
6. View Report Card
7. Class Summary
8. Exit

Choose Option:
""");

    var choice = stdin.readLineSync();

    // ===============================
    // switch statement ব্যবহার
    // ===============================
    switch (choice) {
      case "1":
        addStudent(students, availableSubjects);
        break;

      case "2":
        recordScore(students);
        break;

      case "3":
        addBonus(students);
        break;

      case "4":
        addComment(students);
        break;

      case "5":
        viewAllStudents(students);
        break;

      case "6":
        viewReportCard(students);
        break;

      case "7":
        classSummary(students);
        break;

      case "8":
        running = false;
        print("Program Closed.");
        break;

      default:
        print("Invalid Option!");
    }
  } while (running);
}

// Add Student
void addStudent(List<Map<String, dynamic>> students, Set<String> subjects) {
  print("Enter Student Name:");
  var name = stdin.readLineSync();

  var student = {
    "name": name,

    // List ব্যবহার
    "scores": <int>[],

    // Spread Operator ব্যবহার
    "subjects": {...subjects},

    // nullable values
    "bonus": null,
    "comment": null,
  };

  students.add(student);

  // String Interpolation
  print("$name added successfully.");
}

// =================================================
// Student Selection Helper
// =================================================
int selectStudent(List<Map<String, dynamic>> students) {
  if (students.isEmpty) {
    print("No students available.");
    return -1;
  }

  print("\nStudents:");

  // Indexed for loop
  for (int i = 0; i < students.length; i++) {
    print("${i + 1}. ${students[i]["name"]}");
  }

  print("Select Student:");

  var index = int.tryParse(stdin.readLineSync() ?? "");

  if (index == null || index < 1 || index > students.length) {
    print("Invalid Selection");
    return -1;
  }

  return index - 1;
}

// =================================================
// Record Score
// =================================================
void recordScore(List<Map<String, dynamic>> students) {
  int index = selectStudent(students);

  if (index == -1) return;

  var student = students[index];

  print("Available Subjects:");

  for (var subject in student["subjects"]) {
    print(subject);
  }

  int score = -1;

  // while loop validation
  while (score < 0 || score > 100) {
    print("Enter Score (0-100):");

    score = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

    if (score < 0 || score > 100) {
      print("Invalid Score!");
    }
  }

  student["scores"].add(score);

  print("Score Added.");
}

// =================================================
// Bonus
// =================================================
void addBonus(List<Map<String, dynamic>> students) {
  int index = selectStudent(students);

  if (index == -1) return;

  var student = students[index];

  print("Enter Bonus (1-10):");

  var bonus = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (student["bonus"] == null) {
    // ??= operator
    student["bonus"] ??= bonus;

    print("Bonus Added.");
  } else {
    print("Bonus Already Exists.");
  }
}

// =================================================
// Comment
// =================================================
void addComment(List<Map<String, dynamic>> students) {
  int index = selectStudent(students);

  if (index == -1) return;

  print("Enter Comment:");

  students[index]["comment"] = stdin.readLineSync();

  print("Comment Added.");
}

// =================================================
// View All Students
// =================================================
void viewAllStudents(List<Map<String, dynamic>> students) {
  if (students.isEmpty) {
    print("No Students Found.");
    return;
  }

  // for-in loop
  for (var student in students) {
    // Collection if
    var tags = [
      student["name"],
      "${student["scores"].length} scores",

      if (student["bonus"] != null) "⭐ Has Bonus",
    ];

    print(tags.join(" | "));
  }
}

// =================================================
// Average Calculation
// =================================================
double calculateAverage(Map<String, dynamic> student) {
  List<int> scores = List<int>.from(student["scores"]);

  if (scores.isEmpty) return 0;

  int sum = 0;

  // for loop
  for (int score in scores) {
    sum += score;
  }

  double average = sum / scores.length;

  // ?? operator
  average += (student["bonus"] ?? 0);

  if (average > 100) {
    average = 100;
  }

  return average;
}

// =================================================
// Grade Calculation
// =================================================
String getGrade(double avg) {
  // if else if
  if (avg >= 90) {
    return "A";
  } else if (avg >= 80) {
    return "B";
  } else if (avg >= 70) {
    return "C";
  } else if (avg >= 60) {
    return "D";
  } else {
    return "F";
  }
}

// =================================================
// Report Card
// =================================================
void viewReportCard(List<Map<String, dynamic>> students) {
  int index = selectStudent(students);

  if (index == -1) return;

  var student = students[index];

  double avg = calculateAverage(student);

  String grade = getGrade(avg);

  // switch expression
  String feedback = switch (grade) {
    "A" => "Outstanding Performance!",
    "B" => "Good Work!",
    "C" => "Keep Improving!",
    "D" => "Needs Improvement!",
    "F" => "Failing. Work Hard.",
    _ => "Unknown",
  };

  // ?. and ??
  String comment = student["comment"]?.toUpperCase() ?? "NO COMMENT";

  print("""
================================
REPORT CARD
================================
Name    : ${student["name"]}
Scores  : ${student["scores"]}
Bonus   : ${student["bonus"] ?? 0}
Average : ${avg.toStringAsFixed(2)}
Grade   : $grade
Comment : $comment

Feedback: $feedback
================================
""");
}

// =================================================
// Class Summary
// =================================================
void classSummary(List<Map<String, dynamic>> students) {
  if (students.isEmpty) {
    print("No Students Available.");
    return;
  }

  double totalAverage = 0;
  double highest = 0;
  double lowest = 100;

  int passCount = 0;

  // Set ব্যবহার
  Set<String> uniqueGrades = {};

  for (var student in students) {
    double avg = calculateAverage(student);

    totalAverage += avg;

    if (avg > highest) {
      highest = avg;
    }

    if (avg < lowest) {
      lowest = avg;
    }

    String grade = getGrade(avg);

    uniqueGrades.add(grade);

    // Logical operator &&
    if (student["scores"].isNotEmpty && avg >= 60) {
      passCount++;
    }
  }

  double classAvg = totalAverage / students.length;

  // Collection for
  var summaryLines = [
    for (var student in students)
      "${student["name"]} : ${calculateAverage(student).toStringAsFixed(2)}",
  ];

  print("""
========== CLASS SUMMARY ==========
Total Students : ${students.length}
Class Average  : ${classAvg.toStringAsFixed(2)}
Highest Avg    : ${highest.toStringAsFixed(2)}
Lowest Avg     : ${lowest.toStringAsFixed(2)}
Pass Count     : $passCount
Unique Grades  : $uniqueGrades

Student Averages:
${summaryLines.join("\n")}
===================================
""");
}
