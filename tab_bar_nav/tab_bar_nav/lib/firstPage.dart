import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Icon(
          Icons.access_alarm,
          size: 150.0,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}