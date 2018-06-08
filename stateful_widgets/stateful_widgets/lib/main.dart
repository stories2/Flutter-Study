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
                "Hello stateful"
              ),
              new RaisedButton(
                  onPressed: null,
                child: new Text(
                  "Press me!"
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