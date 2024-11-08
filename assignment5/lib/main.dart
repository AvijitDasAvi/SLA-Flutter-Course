import 'package:assignment5/pages/first_page.dart';
import 'package:assignment5/pages/home_page.dart';
import 'package:assignment5/pages/resume_page.dart';
import 'package:assignment5/pages/second_page.dart';
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
      title: "5th Assignment",
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/firstPage': (context) => FirstPage(),
        '/secondPage': (context) => SecondPage(),
        '/resumePage': (context) => ResumePage()
      },
    );
  }
}
