import 'package:billwizardweb/constants.dart';
import 'package:flutter/material.dart';
import '../Components/side_menu.dart';
import 'package:billwizardweb/responsive.dart';
import 'package:provider/provider.dart';
import '../Controllers/MenuController.dart' as mc;
import 'package:billwizardweb/main.dart';

import '../Components/header.dart';

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
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Header(context),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Receipts"),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.indigoAccent,
                                      ),
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Add receipt",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      )),
                                ],
                              ),
                              SizedBox(height: defaultPadding),
                              GridView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: defaultPadding),
                                itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                              )
                            ],
                          ),
                        ),
                        Expanded(flex: 1, child: Container()),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
