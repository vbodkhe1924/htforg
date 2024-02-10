import 'package:flutter/material.dart';
import 'package:huh/pages/demo.dart';
import 'package:huh/pages/page10.dart';
import 'package:huh/pages/page9.dart';
import 'package:huh/pages/response.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      home: PageAi(),

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
