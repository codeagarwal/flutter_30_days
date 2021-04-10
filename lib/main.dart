import 'package:flutter/material.dart';
import 'package:flutter_app30days/Pages/home_page.dart';
import 'package:flutter_app30days/Pages/login_page.dart';
import 'package:flutter_app30days/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
        ),
        darkTheme: ThemeData(brightness: Brightness.light),
        initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.HomeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
