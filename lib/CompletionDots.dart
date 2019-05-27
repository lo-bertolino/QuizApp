//
// QuizApp
// /CompletionDots
// author: lorenzobertolino
// creation: 2019-05-27 11:05
//
import 'package:flutter/material.dart';

class CompletionDots extends StatelessWidget {
  final int counter;

  const CompletionDots({
    Key key,
    @required this.counter,
  })  : assert(counter != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          10,
          (i) => Padding(
                child: Icon(
                  i < counter ? Icons.check_circle_outline : Icons.radio_button_unchecked,
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 5),
              ),
        ),
      ),
    );
  }
}
