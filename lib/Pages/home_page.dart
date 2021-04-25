import 'package:flutter/material.dart';
import 'package:flutter_app30days/widgets/drawer.dart';

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
      drawer: MyDrawer(),
    );
  }
}
