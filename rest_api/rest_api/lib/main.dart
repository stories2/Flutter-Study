import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as HttpManager;

void main() {
  runApp(
    new MaterialApp(
      home: new HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {

  @override
  State createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  List responseList;

  Future<String> GetData() async {
    HttpManager.Response response = await HttpManager.get(
      Uri.encodeFull("http://jsonplaceholder.typicode.com/posts"),
      headers: {
        "key": "asdf",
        "Accept": "application/json"
      }
    );

    print(response.body);
    
    this.setState((){
      responseList = JSON.decode(response.body);

      print(responseList);

      print("print specific title: " + responseList[1]["title"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: new Text(
          "REST API"
        ),
      ),

      body: new Center(
        child: new RaisedButton(
            onPressed: GetData,
            child: new Text(
              "Get data"
            ),
        ),
      ),
    );
  }
}