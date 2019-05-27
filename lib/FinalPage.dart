import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final int result;
  final int target;

  const ResultsPage({
    Key key,
    @required this.result,
    @required this.target,
  })  : assert(result != null),
        assert(target != null),
        // ⬇ c'è qualquadra che non cosa
        assert(result < target),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RISULTATI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              child: Text(
                "Hai completato il quiz!🎉🎉🎉",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.symmetric(vertical: 8),
            ),
            result == target
                ? Text(
                    "Ma quanto sei bell@\nQuasi quanto Pavanello😍",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  )
                : Text(
                    "Ma hai perso\nHai fatto solo $result su $target 😢",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
          ],
        ),
      ),
    );
  }
}
