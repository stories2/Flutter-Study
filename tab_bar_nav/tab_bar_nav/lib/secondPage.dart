import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Icon(
          Icons.subway,
          size: 150.0,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}