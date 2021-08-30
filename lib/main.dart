import 'package:demo_app/home_page.dart';
import 'package:demo_app/temp_page.dart';
import 'package:demo_app/utils/routes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: '/',
      routes: {
        "/home": (context) => HomePage(),
        MyRoute.blankPage: (context) => TempPage()
      },
    );
  }
}