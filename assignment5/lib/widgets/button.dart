import 'package:flutter/material.dart';

Widget buildButton(BuildContext context, String buttonText, String routeName) {
  return Center(
    child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.pink,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white70, fontSize: 20.0),
          ),
        ),
      ),
    ),
  );
}
