import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'testform.dart';

class SecondTab extends StatelessWidget {

  /**
   * Change handler
   */
  void onChanged(Offset offset) {
    double x = offset.dx;
    double y = offset.dy;

    //print('x:$x, y:$y');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Palm Exercise',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
          body: new TestForm(),
        )
    );
  }
}

/*class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.directions_walk,
                size: 160.0,
                color: Colors.white,
              ),
              Text(
                "Walking Exercise",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}*/

