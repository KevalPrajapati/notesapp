import 'package:flutter/material.dart';
import 'package:notes_app/Screens/HomePage.dart';
import 'package:notes_app/Screens/LoginPage.dart';
import 'package:notes_app/Theme.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/loginbg.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Opacity(
            opacity: 0.7,
            child: Container(
              color: Colors.black,
            ),
          ),
          Center(
            child: SingleChildScrollView(
                child: Container(
              margin: EdgeInsets.all(30),
              child: Card(
                color: ThemeColors.themeGrey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Name",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Name",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Mobile Number",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Username",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Username",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Semester",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Semester",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Branch",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Branch",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ThemeColors.themeRed),
                          ),
                          onPressed: () {
                            //TODO: add login logic
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          child: Text("REGISTER"),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Already our friend?  ",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));
                            },
                            child: Text(
                              "Login Here :)",
                              style: TextStyle(color: ThemeColors.themeRed),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
