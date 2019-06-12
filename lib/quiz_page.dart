import 'package:flutter/material.dart';

import 'final_page.dart';
import 'questions.dart';
import 'quiz_page_widgets/completion_dots.dart';
import 'quiz_page_widgets/custom_card.dart';
import 'quiz_page_widgets/question_text.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CompletionDots(
              target: target,
              counter: score,
            ),
            QuestionText(question: question.content),
            Wrap(
              children: List.generate(
                question.answers.length,
                (i) => CustomCard(
                      answer: question.answers[i],
                      checkCorrect: _checkCorrect,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('There are ' +
        questionList.length.toString() +
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
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FinalPage(),
          ),
        );
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
    question = questionList[counter];
  }
}
