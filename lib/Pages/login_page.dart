import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app30days/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

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
            Text("Welcome $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Passward", labelText: "Passward"),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                          color: (Colors.deepPurple),
                          shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          // borderRadius:
                          //     BorderRadius.circular(changeButton ? 20 : 8)
                        ),
                      ))

                  //ElevatedButton(
                  //child: Text(
                  //"LogIn",
                  //style: TextStyle(fontSize: 20),
                  //),
                  //onPressed: () {
                  //Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  //},
                  //style: TextButton.styleFrom(
                  //minimumSize: Size(200, 50),
                  //backgroundColor: Colors.deepPurpleAccent[200]),
                  //),
                ],
              ),
            ),
          ],
        )));
  }
}
