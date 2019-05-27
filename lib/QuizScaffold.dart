import 'package:flutter/material.dart';

import 'goingBackAlert.dart';

class QuizScaffold extends StatelessWidget {
  final Widget child;

  const QuizScaffold({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => goingBackAlert(context: context),
      child: Scaffold(
        body: Container(
          child: child,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [0.2, 1],
              colors: [
                Color(0xFF00a09a),
                Color(0xFFffffff),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
