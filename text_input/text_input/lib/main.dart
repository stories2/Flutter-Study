import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyStatefulTextInputWidget(),
  ));
}

class MyStatefulTextInputWidget extends StatefulWidget {

  @override
  State createState() {
    return new MyTextInputState();
  }
}

class MyTextInputState extends State<MyStatefulTextInputWidget> {

  String typedStr = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Input text"
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Type here something"
                ),
                onChanged: (String inputStr) {
                  setState(() {
                    typedStr = inputStr;
                  });
                },
              ),
              new Text(
                  typedStr
              )
            ],
          ),
        ),
      ),
    );
  }
}