import 'package:flutter/material.dart';

Drawer SideMenu() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DrawerHeader(child: Image.asset("assets/images/wizard.png")),
          DrawerListTile(
              title: "Bills", iconSrc: Icon(Icons.money), press: () {}),
          DrawerListTile(
              title: "Receipt", iconSrc: Icon(Icons.receipt), press: () {}),
        ],
      ),
    ),
  );
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  final String title;
  final Icon iconSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        leading: iconSrc,
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w700)));
  }
}
