import 'package:flutter/material.dart';
import 'login.dart';
import 'cadastro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open UNIFEOB',
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}