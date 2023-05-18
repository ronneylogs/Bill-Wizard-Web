import 'package:flutter/material.dart';

import 'package:billwizardweb/responsive.dart';

import '../Controllers/MenuController.dart' as mc;

import 'package:provider/provider.dart';

Row Header(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      if (!Responsive.isDesktop(context))
        IconButton(
          onPressed: context.read<mc.MenuController>().controlMenu,
          icon: Icon(Icons.menu),
        ),
      Text("Bill Wizard", style: Theme.of(context).textTheme.headlineMedium),
      const Text("Profile")
    ],
  );
}
