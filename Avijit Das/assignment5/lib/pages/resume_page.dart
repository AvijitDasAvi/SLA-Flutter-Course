import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: Text(
        "Resume Page",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
