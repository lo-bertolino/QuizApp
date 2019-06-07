import 'package:flutter/material.dart';

class CompletionDots extends StatelessWidget {
  final int counter;
  final int target;

  const CompletionDots({
    Key key,
    @required this.counter,
    @required this.target,
  })  : assert(counter != null),
        assert(target != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        target,
        (i) => Padding(
              child: Icon(
                i < counter
                    ? Icons.check_circle_outline
                    : Icons.radio_button_unchecked,
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 5),
            ),
      ),
    );
  }
}
