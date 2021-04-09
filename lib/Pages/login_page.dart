import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app30days/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              height: 35,
            ),
            Text("Welcome to MyApp",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Passward", labelText: "Passward"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    child: Text(
                      "LogIn",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    style: TextButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: Colors.deepPurpleAccent[200]),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
