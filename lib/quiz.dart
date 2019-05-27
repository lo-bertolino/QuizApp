import 'dart:io';

import 'package:sorpresa_zoa/finalPage.dart';
import 'package:sorpresa_zoa/goingBackAlert.dart';
import 'package:sorpresa_zoa/main.dart';
import 'package:sorpresa_zoa/questions.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class Quiz extends StatefulWidget {
  final List<Question> shDb;
  Quiz(this.shDb);

  @override
  QuizState createState() => QuizState();
}

bool wrong = false;

class QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    print('---------' + counter.toString() + 'Risulatato:' + result.toString());
    Question question = widget.shDb[counter];
    var rng = Random();
    int a = rng.nextInt(3) % 4;

    return WillPopScope(
      onWillPop: () => goingBackAlert(
            context: context,
          ),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.8],
              colors: [
                Color(0xFF003160),
                Color(0xFF002247),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: (() {
                    List<IconWithPadding> list = List();
                    for (int i = 0; i < 10; i++) {
                      list.add(IconWithPadding(
                        i < counter
                            ? Icons.check_circle_outline
                            : Icons.radio_button_unchecked,
                      ));
                    }
                    return list;
                  })(),
                ),
              ),
              Container(
                  child: Container(
                      child: Center(
                          child: Text(
                        question.question,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )),
                      height: 100.0,
                      width: 600.0)),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomCard(question.answers[a] ?? '', widget.shDb),
                    CustomCard(question.answers[(a + 1) % 4] ?? '', widget.shDb)
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomCard(question.answers[(a + 2) % 4] ?? '', widget.shDb),
                    CustomCard(question.answers[(a + 3) % 4] ?? '', widget.shDb)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final Answer answer;
  final List<Question> shDb;
  CustomCard(this.answer, this.shDb);
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Color cardColor = Colors.white;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if (widget.answer.correct) {
          cardColor = Colors.green[200];
          textColor = Colors.green[900];
          if (!wrong) {
            result++;
          }
          setState(() {});
          wrong = false;
        } else {
          wrong = true;
          cardColor = Colors.red[200];
          textColor = Colors.red[900];
          setState(() {});
        }

        if (counter < target && widget.answer.correct) {

          counter++;
          counter = counter % db.length;
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Quiz(widget.shDb),
          ));
        } else if (counter >= target) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => ResultsPage(),
          ));
        }
      },
      child: Card(
        color: cardColor,
        child: Container(
          child: Center(
              child: Text(
            widget.answer.answer,
            style: TextStyle(
              color: textColor,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          )),
          height: 80.0,
          width: 250.0,
        ),
      ),
    );
  }
}

class IconWithPadding extends StatelessWidget {
  IconData icon;
  IconWithPadding(this.icon);
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
    );
  }
}
