import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  Color backColor = const Color(0xffff2f2f2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: const TextStyle(
                fontSize: 50.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20.0),
              onTap: () {
                setState(() {
                  count++;
                  if (count % 2 == 0) {
                    backColor = Colors.green;
                  } else {
                    backColor = Colors.red;
                  }
                });
              },
              child: Container(
                width: 100.0,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "Tap Me!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20.0),
              onTap: () {
                setState(() {
                  count = 0;
                  backColor = const Color(0xffff2f2f2);
                });
              },
              child: Container(
                width: 100.0,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
