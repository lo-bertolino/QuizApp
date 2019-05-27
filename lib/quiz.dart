import 'dart:math';

import 'package:flutter/material.dart';

import 'CompletionDots.dart';
import 'CustomCard.dart';
import 'FinalPage.dart';
import 'QuestionText.dart';
import 'Questions.dart';
import 'QuizScaffold.dart';

class Quiz extends StatefulWidget {
  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  List<GlobalKey<CustomCardState>> buttonKeys;
  final Random rng = Random();
  final int target = 10;
  int counter = 0;
  int result = 0;
  bool madeAMistake = false;
  Question question;

  @override
  Widget build(BuildContext context) {
    return QuizScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CompletionDots(counter: counter),
          QuestionText(question: question),
          Wrap(
            children: [
              CustomCard(
                key: buttonKeys[0],
                answer: question.answers[0],
                checkCorrect: _checkCorrect,
              ),
              CustomCard(
                key: buttonKeys[1],
                answer: question.answers[1],
                checkCorrect: _checkCorrect,
              ),
              CustomCard(
                key: buttonKeys[2],
                answer: question.answers[2],
                checkCorrect: _checkCorrect,
              ),
              CustomCard(
                key: buttonKeys[3],
                answer: question.answers[3],
                checkCorrect: _checkCorrect,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('There are ' + db.length.toString() + ' questions in total');
    db.shuffle();
    print("The list has been SHUFFLED");
    buttonKeys = List.generate(4, (_) => GlobalKey<CustomCardState>());
    _newQuestion();
  }

  bool _checkCorrect(Answer answer) {
    if (!answer.isCorrect) {
      madeAMistake = true;
      return false;
    } else {
      if (madeAMistake == false)
        result++;
      else
        madeAMistake = false;

      if (counter < target) {
        counter++;
        counter = counter % db.length; // ??
        Future.delayed(
          Duration(milliseconds: 300),
          () => setState(() => _newQuestion()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ResultsPage(
                  target: target,
                  result: result,
                ),
          ),
        );
      }
      return true;
    }
  }

  void _newQuestion() {
    print('Phase       : ' + counter.toString());
    print('Total score : ' + result.toString());
    print('Target score: ' + target.toString());
    buttonKeys.forEach((a) => a.currentState?.reset());
    question = db[counter];
    question.answers.shuffle();
  }
}
