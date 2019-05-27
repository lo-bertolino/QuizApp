import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

import 'package:sorpresa_zoa/quiz.dart';
import 'package:sorpresa_zoa/questions.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

Color myColor = Colors.lightBlue;
int counter = 0;
int result = 0;
int target = 10;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      title: 'Il quiz della zia Annina',
      theme: ThemeData(
        primarySwatch: myColor,
      ),
      home: MyHomePage(title: 'Il quiz della zia annina'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Question> shuffeledDb;

  @override
  Widget build(BuildContext context) {
    print(db.length);
    return Scaffold(
      /*   appBar: AppBar(
        bottomOpacity: 0.5,
        title: Text(widget.title),
      ), */
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
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
/*               GradientButton(
              
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.8],
                  colors: [
                    Color(0xFF003160),
                    Color(0xFF002247),
                  ],
                ),
                child: Text("Gioca"),
                callback: () {
                  counter = 0;
                  result = 0;

                  print("SHUFFELED");
                  shuffeledDb = shuffle(db);

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => //Quiz((db[Random().nextInt(db.length - 1)])),
                          Quiz(shuffeledDb)));
                },
              ), */
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                    color: Color(0xFF002247),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Gioca",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    onPressed: () {
                      counter = 0;
                      result = 0;

                      print("SHUFFELED");
                      shuffeledDb = shuffle(db);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder:
                              (context) => //Quiz((db[Random().nextInt(db.length - 1)])),
                                  Quiz(shuffeledDb)));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Question> shuffle(List<Question> a) {
  var j, x, i;
  for (i = 0; i < a.length; i++) {
    j = Random().nextInt(db.length - 1);
    x = a[i];
    a[i] = a[j];
    a[j] = x;
  }
  return a;
}
