import 'package:flutter/material.dart';
import 'package:flutter_app30days/Pages/cart_page.dart';
import 'package:flutter_app30days/Pages/home_page.dart';
import 'package:flutter_app30days/Pages/login_page.dart';
import 'package:flutter_app30days/utils/routes.dart';
import 'package:flutter_app30days/widgets/themes.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.HomeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.HomeRoute: (context) => HomePage(),
          MyRoutes.LoginRoute: (context) => LoginPage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}
