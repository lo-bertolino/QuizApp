import 'package:flutter/material.dart';

import 'Questions.dart';

class QuestionText extends StatelessWidget {
  final Question question;

  const QuestionText({
    Key key,
    this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          question.string,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      height: MediaQuery.of(context).size.height / 2.7,
      padding: EdgeInsets.symmetric(horizontal: 4),
    );
  }
}
