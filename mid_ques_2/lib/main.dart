import 'package:flutter/material.dart';
import 'package:mid_ques_2/pages/user-list-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Question 2",
      home: UserListPage(),
    );
  }
}
