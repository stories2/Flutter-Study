import 'package:flutter/material.dart';

class Loader extends StatefulWidget {

  @override
  State createState() {
    return new LoaderState();
  }
}

class LoaderState extends State<Loader> with SingleTickerProviderStateMixin {

  AnimationController animationController;
  Animation<double> animation;

  @override
  Widget build(BuildContext context) {
//    return new Container(
//      color: Colors.white,
//      height: 3.0,
//      width: animation.value * 100.0,
//    );
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      new Container(
        color: Colors.white,
        height: 3.0,
        width: animation.value * 100.0,
      ),
      new Padding(
          padding: new EdgeInsets.only(
            bottom: 5.0
          )
      ),

      new Container(
        color: Colors.white,
        height: 3.0,
        width: animation.value * 75.0,
      ),
      new Padding(
          padding: new EdgeInsets.only(
              bottom: 5.0
          )
      ),

      new Container(
        color: Colors.white,
        height: 3.0,
        width: animation.value * 50.0,
      ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      duration: new Duration(
          milliseconds: 1200
      ),
      vsync: this
    );

    animation = new CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut
    );
    animation.addListener(() {
      this.setState(() {

      });
    });
    animation.addStatusListener((AnimationStatus animationStatus){
      switch(animationStatus) {
        case AnimationStatus.completed:
          print("animation completed");
          animationController.reverse();
          break;
        case AnimationStatus.dismissed:
          print("animation dismissed");
          animationController.forward();
          break;
        case AnimationStatus.forward:
          print("animation forward");
          break;
        case AnimationStatus.reverse:
          print("animation reverse");
          break;
        default:
          break;
      }
    });
//    animationController.repeat();
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}