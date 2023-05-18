import 'package:flutter/material.dart';
import '../Components/side_menu.dart';
import 'package:billwizardweb/responsive.dart';
import 'package:provider/provider.dart';
import '../Controllers/MenuController.dart' as mc;
import 'package:billwizardweb/main.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: context.read<mc.MenuController>().scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
            child: Row(
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        if (!Responsive.isDesktop(context))
                          IconButton(
                              onPressed:
                                  context.read<mc.MenuController>().controlMenu,
                              icon: Icon(Icons.menu))
                      ],
                    )
                  ],
                )),
          ],
        )));
  }
}
