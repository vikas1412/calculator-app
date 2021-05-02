import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.red,
      ),
      home: Homepage(),
    );
  }
}

