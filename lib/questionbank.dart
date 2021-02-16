import 'package:quizzler/questions.dart';

class QuestionBank {
  int questionNumber = 0;

  List<Questions> questions = [
    Questions(
        questionText:
            'int x[] = new int[]{10,20,30};<br><br>Arrays can also be created and initialize as in above statement.',
        questionAnswer: true),
    Questions(
        questionText:
            'In an instance method or a constructor, "this" is a reference to the current object.',
        questionAnswer: true),
    Questions(
        questionText: 'Garbage Collection is manual process.',
        questionAnswer: false),
    Questions(
        questionText:
            'The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.',
        questionAnswer: true),
    Questions(
        questionText: 'Constructor overloading is not possible in Java.',
        questionAnswer: false),
    Questions(
        questionText: 'Assignment operator is evaluated Left to Right.',
        questionAnswer: false),
    Questions(
        questionText:
            'All binary operators except for the assignment operators are evaluated from Left to Right',
        questionAnswer: true),
    Questions(
        questionText:
            'Java programming is not statically-typed, means all variables should not first be declared before they can be used.',
        questionAnswer: false),
    Questions(
        questionText:
            'In Java SE 7 and later, underscore characters "_" can appear anywhere between digits in a numerical literal',
        questionAnswer: true),
    Questions(
        questionText: 'Variable name can begin with a letter, "\$", or "_".',
        questionAnswer: true),
    Questions(
        questionText: 'Interfaces can be instantiated.', questionAnswer: false),
    Questions(
        questionText:
            'The modifiers public and static cannot written in either order "public static" or "static public"',
        questionAnswer: false),
    Questions(
        questionText: 'A .class file contains bytecodes?',
        questionAnswer: true),
    Questions(
        questionText: 'James Gosling is father of Java?', questionAnswer: true),
    Questions(
        questionText:
            'Java technology is both a programming language and a platform.',
        questionAnswer: true),
  ];
  String getQuestionText() {
    return questions[questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return questions[questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (questionNumber < questions.length - 1) {
      questionNumber++;
    }
  }

  bool isFinished() {
    if (questionNumber >= questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}
