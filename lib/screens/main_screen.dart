import 'package:flutter/material.dart';
import '../Components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(flex: 5, child: Container(color: Colors.blue))
      ],
    )));
  }
}
