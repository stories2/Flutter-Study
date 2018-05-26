import 'package:flutter/material.dart';

void main() {
  runApp(
    new Center(
      child: new Directionality(
          textDirection: TextDirection.ltr,
          child: new Text("Hello World!")
      ),
    )
  );
}