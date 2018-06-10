import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Homepage(),
    routes: <String, WidgetBuilder> {
      "/SubPage": (BuildContext context) {
        return new SubPage();
      }
    },
  ));
}

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Home",
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.favorite
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/SubPage");
                },
                iconSize: 70.0,
              ),
              new Text(
                "Home"
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Sub page",
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                    Icons.alarm
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 70.0,
              ),
              new Text(
                  "Sub page"
              )
            ],
          ),
        ),
      ),
    );
  }
}