import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String days = "30";
String name = "Mayank Agarwal";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $days Days of Flutter by $name  "),
          ),
        ),
      ),
    );
  }
}
