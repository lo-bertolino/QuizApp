import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String question;

  const QuestionText({
    Key key,
    @required this.question,
  })  : assert(question != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          question,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      height: MediaQuery.of(context).size.height / 3.5,
      padding: EdgeInsets.symmetric(horizontal: 4),
    );
  }
}
