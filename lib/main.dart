import 'package:billwizardweb/screens/main_screen.dart';
import 'package:flutter/material.dart';
import './mobile/mbHome.dart';
import './pc/pcHome.dart';
import './constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:provider/provider.dart';
import 'Controllers/MenuController.dart' as mc;
import './screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => mc.MenuController())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bill Wizard',
          theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: bgColor,
              textTheme: GoogleFonts.poppinsTextTheme(
                  Theme.of(context).textTheme.apply(bodyColor: Colors.black))),
          home: LoginScreen()

          // const MainScreen(),
          ),
    );
  }
}
