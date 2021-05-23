import 'dart:io';

import 'package:flutter/material.dart';
import 'package:notes_app/Screens/AssignmentsPage.dart';
import 'package:notes_app/Screens/LoginPage.dart';
import 'package:notes_app/Theme.dart';
import 'package:shape_of_view/shape_of_view.dart';

class HomePage extends StatefulWidget {
  double animationValue;
  HomePage({this.animationValue});
  @override
  _HomePageState createState() => _HomePageState(animationValue);
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //double height = MediaQuery.of(context).size.height;
  // AnimationController _controller = new AnimationController();
  double animationValue;
  _HomePageState(this.animationValue);
  @override
  void initState() {
    super.initState();
    animationValue != null
        ? animationValue = animationValue
        : animationValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Are you sure?"),
              actions: [
                ButtonBar(
                  children: [
                    TextButton(
                        onPressed: () {
                          exit(0);
                        },
                        child: Text("Yeah boii"))
                  ],
                )
              ],
            );
          },
        );
      },
      child: Scaffold(
          backgroundColor: ThemeColors.themeGrey,
          body: Stack(
            children: [
              AnimatedPositioned(
                onEnd: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AssignmentsPage(),
                      ));
                },
                duration: Duration(milliseconds: 400),
                top: animationValue,
                child: ShapeOfView(
                  elevation: 10,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  shape: DiagonalShape(
                      position: DiagonalPosition.Bottom,
                      direction: DiagonalDirection.Right,
                      angle: DiagonalAngle.deg(angle: 15)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        animationValue = -500;
                      });
                    },
                    child: Container(
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(
                          'Notes',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                onEnd: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AssignmentsPage(),
                      ));
                },
                duration: Duration(milliseconds: 400),
                bottom: animationValue,
                right: 0,
                child: ShapeOfView(
                  elevation: 10,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  shape: DiagonalShape(
                      position: DiagonalPosition.Top,
                      direction: DiagonalDirection.Left,
                      angle: DiagonalAngle.deg(angle: 15)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        animationValue = -500;
                      });
                    },
                    child: Container(
                      color: Colors.pinkAccent,
                      child: Center(
                        child: Text(
                          'Assignment',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
