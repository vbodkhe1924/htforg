import 'package:flutter/material.dart';
import 'package:huh/pages/history_page.dart';
import 'package:huh/pages/home_page.dart';
import 'package:huh/pages/main_page.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      home: HeroPage(),
      themeMode: ThemeMode.light,
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      // routes: {
      //   "/": (context) => LoginPage(),
      //   "/home" :(context) => Homepage()
      // }
    );
  }
}
