import 'package:assignment7/pages/login_page.dart';
import 'package:assignment7/pages/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment 7th",
      home: HomePage(),
    );
  }
}
