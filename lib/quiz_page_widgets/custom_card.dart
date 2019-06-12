import 'package:flutter/material.dart';

import '../questions.dart';

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
          width: MediaQuery.of(context).size.width / 2.8,
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
      // corretta => verde
      setState(() {
        _cardColor = Colors.green[200];
        _textColor = Colors.green[900];
      });
    } else {
      // sbagliata => rosso
      setState(() {
        _cardColor = Colors.red[200];
        _textColor = Colors.red[900];
      });
    }
    // ritorna con i colori iniziali
    Future.delayed(
      Duration(milliseconds: 500),
      () => setState(() => reset()),
    );
  }
}
