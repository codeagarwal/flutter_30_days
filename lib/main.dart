import 'package:flutter/material.dart';
import 'package:flutter_app30days/Pages/home_page.dart';
import 'package:flutter_app30days/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        themeMode: ThemeMode.system,
        darkTheme: ThemeData(brightness: Brightness.light),
        initialRoute: "/home",
        routes: {
          "/": (context) => HomePage(),
          "/Login Page": (context) => LoginPage(),
        });
  }
}
