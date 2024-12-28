import 'package:assignment5/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Image.asset(
                "assets/images/admin.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manager",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 20, 92, 218),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.location),
                              Text(
                                "New York",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Full-Time",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$1656",
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Color.fromARGB(255, 20, 92, 218),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "per month",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Details:",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 20, 92, 218),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, vis no erroribus hendreit conseteur. Nec ei vocent commodo omnesque, has ex partiendo.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Requirements:",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 20, 92, 218),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, vis no erroribus hendreit conseteur. Nec ei vocent commodo omnesque, has ex partiendo.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  buildButton(context, "Send Resume", '/resumePage'),
                  SizedBox(
                    height: 10.0,
                  ),
                  buildButton(context, "First Page", '/firstPage'),
                  SizedBox(
                    height: 10.0,
                  ),
                  buildButton(context, "Second Page", '/secondPage'),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
