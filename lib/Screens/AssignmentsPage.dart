import 'package:flutter/material.dart';
import 'package:notes_app/Screens/HomePage.dart';

class AssignmentsPage extends StatefulWidget {
  @override
  _AssignmentsPageState createState() => _AssignmentsPageState();
}

class _AssignmentsPageState extends State<AssignmentsPage> {
  List<String> subjects = ["Maths", "Bee", "Pwc", "Bme", "Eg"];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(
                animationValue: 0,
              ),
            ));
      },
      child: Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: subjects.length,
          itemBuilder: (context, i) {
            return Card(
              color: Colors.red,
              child: Text(subjects[i]),
            );
          },
        ),
      ),
    );
  }
}
