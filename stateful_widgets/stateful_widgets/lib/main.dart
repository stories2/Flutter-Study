import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new AwesomeButton(),
    )
  );
}

class AwesomeButton extends StatefulWidget {

  @override
  State createState() {
    return new AwesomeButtonState();
  }
}

class AwesomeButtonState extends State<AwesomeButton> {

  int pressCounter = 0;
  List<String> pressStrList = [
    "Flutter", "is", "sucks"
  ];
  String displayStr = "";

  AwesomeButtonState() {
    displayStr = "created";
  }

  void BtnPressMeOnPressed() {
    setState(() {
      displayStr = pressStrList[pressCounter];
      pressCounter = (pressCounter + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
            "Stateful widgets"
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                displayStr,
                style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              new Padding(
                  padding: new EdgeInsets.all(10.0)
              ),
              new RaisedButton(
                onPressed: BtnPressMeOnPressed,
                child: new Text(
                  "Press me!",
                  style: new TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0
                   ),
                ),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}