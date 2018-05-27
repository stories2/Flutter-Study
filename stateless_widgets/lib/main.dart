import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyWidgets(),
  ));
}

class MyCardWidgets extends StatelessWidget {

  final Widget title, icon;

  MyCardWidgets({
    this.title, this.icon
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "App bar title"
        ),
      ),
      body: new Container(
//        padding: new EdgeInsets.all(20.0),
        padding: new EdgeInsets.only(
            bottom: 20.0
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCardWidgets(
              title: new Text("I hate flutter",
                style: new TextStyle(
                  fontSize: 20.0
                ),),
              icon: new Icon(
                Icons.favorite,
                size: 40.0,
                color: Colors.redAccent,)
            ),
            new MyCardWidgets(
              title: new Text("I want to sleep"),
              icon: new Icon(
                  Icons.access_alarm,
                size: 40.0,
                color: Colors.amberAccent,),
            ),
            new MyCardWidgets(
              title: new Text("Fuck the world"),
              icon: new Icon(
                  Icons.arrow_right,
                size: 40.0,
                color: Colors.deepOrangeAccent,),
            ),
          ],
        ),
      ),
    );
  }
}