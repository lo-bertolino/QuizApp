import 'package:flutter/material.dart';

/// Mostra un [AlertDialog] che chiede se si vuole davvero chiudere la pagina che contiene un Form.
Future<bool> goingBackAlert({BuildContext context, MaterialPageRoute route}) async {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Sicuro?',
          style:
              Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w400),
        ),
        content: SingleChildScrollView(
          child: Text(
            'Sei Sicuro di volerlasciare il gioco?',
            softWrap: true,
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Sì',
              style: TextStyle(color: Colors.grey),
            ),
            onPressed: () {
              if (route != null) {
                Navigator.of(context).pop(false);
                Navigator.of(context).pushReplacement(route);
              } else {
                Navigator.of(context).pop(true);
              }
            },
          ),
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  );
}
