import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: Text(
        "Second Page",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
