void main() {
  var name = 'MD. IMRAN ALI';
  print('SSC RESULT REPORT!');
  print('Name: $name');

  //useing if_else statement

  var marks = 65;
  if (marks >= 80 && marks <= 100) {
    print('Grade: A');
  } else if (marks >= 70 && marks <= 79) {
    print('Grade: B');
  } else if (marks >= 60 && marks <= 69) {
    print('Grade: C');
  } else {
    print('Grade: F');
  }

  // Using switch statement for grade calculation

  var grade = 'D';
  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Good job!');
      break;
    case 'C':
      print('Average!');
      break;
    case 'D':
      print('Below Average!');
      break;
    default:
      print('Failed');
  }
}
