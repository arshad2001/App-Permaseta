import 'package:flutter/material.dart';
import 'package:nani/file_page.dart';
import 'package:nani/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: FilePage()
    );
  }
}