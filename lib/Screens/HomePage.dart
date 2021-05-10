import 'package:flutter/material.dart';
import 'package:notes_app/Screens/AssignmentsPage.dart';
import 'package:notes_app/Screens/LoginPage.dart';
import 'package:notes_app/Theme.dart';
import 'package:shape_of_view/shape_of_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //double height = MediaQuery.of(context).size.height;
  // AnimationController _controller = new AnimationController();
  double animationValue = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: InkWell(
                onTap: () {
                  setState(() {
                    animationValue = -500;
                  });
                },
                child: ShapeOfView(
                  elevation: 10,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
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
              child: InkWell(
                onTap: () {
                  setState(() {
                    animationValue = -500;
                  });
                  print("hello");
                },
                child: ShapeOfView(
                  elevation: 10,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  shape: DiagonalShape(
                      position: DiagonalPosition.Top,
                      direction: DiagonalDirection.Left,
                      angle: DiagonalAngle.deg(angle: 15)),
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
        ));
  }
}
