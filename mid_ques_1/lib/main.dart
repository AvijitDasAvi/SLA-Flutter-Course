import 'package:flutter/material.dart';
import 'package:mid_ques_1/pages/sign-up-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Question 1",
        home: SignUpPage());
  }
}