import 'package:flutter/material.dart';
import 'package:flutter_app30days/Pages/home_page.dart';
import 'package:flutter_app30days/Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
        ),
        darkTheme: ThemeData(brightness: Brightness.light),
        initialRoute: "/home",
        routes: {
          "/home": (context) => LoginPage(),
          "/Login Page": (context) => LoginPage(),
        });
  }
}
