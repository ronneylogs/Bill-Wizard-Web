import "package:flutter/material.dart";

// For collapsible sidebar
import 'package:collapsible_sidebar/collapsible_sidebar.dart';

class pcHome extends StatefulWidget {
  const pcHome({super.key});

  @override
  State<pcHome> createState() => _pcHomeState();
}

class _pcHomeState extends State<pcHome> {
  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double fontScale = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: Row(children: [
        Container(
            width: screenWidth * 0.225,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 8, right: 8, bottom: 40),
                  child: Text("Bill Wizard",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontScale * 32)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Dashboard",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: fontScale * 25)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Settings",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: fontScale * 25)),
                    ),
                  ],
                )
              ],
            )),
        Expanded(
          child: Container(color: Colors.white),
        )
      ]),
    );
  }
}
