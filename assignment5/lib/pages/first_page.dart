import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Text(
        "First Page",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
