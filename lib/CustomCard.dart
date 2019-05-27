import 'package:flutter/material.dart';

import 'Questions.dart';

class CustomCard extends StatefulWidget {
  final Answer answer;
  final bool Function(Answer) checkCorrect;

  CustomCard({
    Key key,
    @required this.checkCorrect,
    @required this.answer,
  }) : super(key: key);

  @override
  CustomCardState createState() => CustomCardState();
}

class CustomCardState extends State<CustomCard> {
  Color _cardColor = Colors.white;
  Color _textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: _onPressed,
      child: Card(
        color: _cardColor,
        child: Container(
          child: Center(
            child: Text(
              widget.answer.string,
              style: TextStyle(
                color: _textColor,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width / 2.6,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    reset();
  }

  void reset() {
    _cardColor = Colors.white;
    _textColor = Colors.black;
  }

  void _onPressed() {
    if (widget.checkCorrect(widget.answer)) {
      setState(() {
        _cardColor = Colors.green[200];
        _textColor = Colors.green[900];
      });
    } else {
      setState(() {
        _cardColor = Colors.red[200];
        _textColor = Colors.red[900];
      });
    }
  }
}
