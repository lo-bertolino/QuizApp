import 'package:flutter/material.dart';

import 'questions.dart';

class QuizPage extends StatefulWidget {
  @override
  QuizPageState createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  final int target = 5;
  int counter = 0;
  int score = 0;
  bool madeAMistake = false;
  Question question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0, 1],
            colors: [
              Color(0xFF007470),
              Color(0xFF87DAD7),
            ],
          ),
        ),
        // TODO Inserire testo della domanda
        // TODO Inserire barra di completamento
        // TODO Inserire bottoni delle risposte
        child: Placeholder(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('There are ' +
        db.length.toString() +
        ' questions in total');
    _newQuestion();
  }

  bool _checkCorrect(Answer answer) {
    if (!answer.isCorrect) {
      madeAMistake = true;
      return false;
    } else {
      if (madeAMistake == false)
        score++;
      else
        madeAMistake = false;

      counter++;
      assert(counter <= target);
      if (counter == target) {
        // TODO navigare alla pagina finale
        print('END');
      } else if (counter < target) {
        Future.delayed(
          Duration(milliseconds: 300),
          () => setState(() => _newQuestion()),
        );
      } else {
        print('wtf');
      }
      return true;
    }
  }

  void _newQuestion() {
    print('Step: ' +
        counter.toString() +
        ', Score: ' +
        score.toString() +
        ', Target: ' +
        target.toString());
    question = db[counter];
  }
}
