import 'package:flutter/material.dart';
import 'package:sorpresa_zoa/main.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xFF003160),
        bottomOpacity: 0.5,
        title: Text(
          "Risultati",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hai completato il quiz!",
              style: TextStyle(fontSize: 40),
            ),
          ),
           result != 10
              ? Text("Risultato: $result su $target ")
              : Text("Massimo punteggio: Ti sei meritata il regalo!"),
          result == 10
              ? Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.card_giftcard,
                    size: 80,
                  ))
              : Padding(padding: EdgeInsets.all(1),),
        ],
      )),
    );
  }
}
