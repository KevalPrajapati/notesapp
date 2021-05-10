import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //double height = MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        body: (ShapeOfView(
          elevation: 10,
          height: 375,
          shape: DiagonalShape(
              position: DiagonalPosition.Bottom,
              direction: DiagonalDirection.Right,
              angle: DiagonalAngle.deg(angle: 15)),
          child: Container(
            color: Colors.lightBlue,
            child: Center(
              child: Text(
                'Notes',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
        )));
  }
}
