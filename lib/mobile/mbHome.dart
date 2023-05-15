import 'package:flutter/material.dart';

class mbHome extends StatefulWidget {
  const mbHome({super.key});

  @override
  State<mbHome> createState() => _mbHomeState();
}

class _mbHomeState extends State<mbHome> {
  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Text("Receipts",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300))),
                Tab(
                    icon: Text("Friends",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300))),
              ],
            ),
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [],
            ),
          )),
    );
  }
}
