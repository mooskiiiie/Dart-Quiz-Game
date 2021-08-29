import 'dart:io';

class MathQuestion {
  var question;
  var answer;

  MathQuestion(String question, double answer) {
    this.question = question;
    this.answer = answer;
  }
}

double promptDouble(String prompText) {
  print(prompText);
  double number = double.parse(stdin.readLineSync()!);
  return number;
}

main() {
  List<MathQuestion> questions = [
    MathQuestion("1 + 2", 3),
    MathQuestion("5 + 3", 8),
    MathQuestion("4 + 2", 6)
  ];

  int score = 0;

  for (MathQuestion mathQuestion in questions) {
    double userAnswer = promptDouble(mathQuestion.question);
    if (userAnswer == mathQuestion.answer) {
      print("Answer is correct");
      score++;
    } else {
      print("Answer is incorrect, the answer is $mathQuestion.answer");
    }
  }
  print("Your total score is $score/$questions.length");
}
