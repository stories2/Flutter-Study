import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as HttpManager;
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {

  @override
  State createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("REST API Listview"),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        
      ),
    );
  }
}