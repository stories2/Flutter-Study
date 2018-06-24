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

  List responseList;

  Future<String> GetData() async {
    HttpManager.Response response = await HttpManager.get(
        Uri.encodeFull("http://jsonplaceholder.typicode.com/posts"),
        headers: {
          "Accept": "application/json"
        }
    );

    this.setState(() {
      responseList = JSON.decode(response.body);
    });

    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("REST API Listview"),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: new ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                child: new Text(
                  responseList[index]["title"]
                ),
              );
            },
            itemCount: responseList == null ? 0 : responseList.length ,
        ),
      ),
    );
  }

  @override
  void initState() {
    this.GetData();
  }
}