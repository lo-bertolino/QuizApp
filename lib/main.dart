import 'package:flutter/material.dart';

import 'quiz_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Il quiz di JEToP🎉🎉',
      theme: ThemeData(
        accentColor: Color(0xFF00A09A),
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.5,
        title: Text('Il quiz di JEToP🎉🎉'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Clicca per giocare:',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  // TODO Far iniziare il gioco
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "GIOCA",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _startGame(BuildContext context) {
    print('Starting game');
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => QuizPage(),
      ),
    );
  }
}
