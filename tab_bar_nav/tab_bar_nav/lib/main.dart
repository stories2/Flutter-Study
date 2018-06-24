import 'package:flutter/material.dart';
import './firstPage.dart' as FirstPage;
import './secondPage.dart' as SecondPage;
import './thirdPage.dart' as ThirdPage;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {

  @override
  State createState() {
    return new MyTabsState();
  }
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Tab"
        ),
        backgroundColor: Colors.redAccent,
        bottom: new TabBar(
            controller: tabController,
            tabs: <Tab>[
              new Tab(
                icon: new Icon(
                  Icons.arrow_back
                ),
              ),

              new Tab(
                icon: new Icon(
                    Icons.arrow_downward
                ),
              ),

              new Tab(
                icon: new Icon(
                    Icons.arrow_forward
                ),
              )
            ]
        ),
      ),
      body: new TabBarView(
          children: <Widget>[
            new FirstPage.FirstPage(),
            new SecondPage.SecondPage(),
            new ThirdPage.ThirdPage()
          ],
          controller: tabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
            controller: tabController,
            tabs: <Tab>[
              new Tab(
                icon: new Icon(
                    Icons.arrow_back
                ),
              ),

              new Tab(
                icon: new Icon(
                    Icons.arrow_upward
                ),
              ),

              new Tab(
                icon: new Icon(
                    Icons.arrow_forward
                ),
              )
            ]
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}