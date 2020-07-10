import 'package:flutter/material.dart';
import 'package:submission_flutter/screen/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19',
      theme: ThemeData.light(),
      home: MainScreen(),
    );
  }
}