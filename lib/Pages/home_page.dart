import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String Name = "Mayank Agarwal";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child:
            Container(child: Text("Welcome to $days Days of Flutter $Name.  ")),
      ),
      drawer: Drawer(
        child: new Center(
          child: Text(
            "Hello this is Drawer.",
            style: TextStyle(
              fontSize: 30,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
