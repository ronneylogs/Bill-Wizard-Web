import 'package:billwizardweb/constants.dart';
import 'package:flutter/material.dart';

// For username text input.
TextEditingController usernameLogIn = TextEditingController();

// For password text input.
TextEditingController passwordLogIn = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // For getting screen dimensions.
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Center(
              child: SizedBox(
                width: screenWidth * 0.35,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: screenHeight * 0.15,
                                child: Image.asset("assets/images/wizard.png"))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Bill Wizard",
                                style:
                                    Theme.of(context).textTheme.headlineSmall)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Email"),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.2,
                                      // height: screenHeight * 0.1,
                                      child: TextField(
                                        controller: usernameLogIn,
                                        onChanged: (val) {
                                          usernameLogIn.value =
                                              TextEditingValue(
                                            text: val,
                                            selection: TextSelection.collapsed(
                                                offset: val.length),
                                          );
                                          setState(() {});
                                        },
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2.0),
                                          ),
                                          hintText: 'email',
                                          prefixIcon: Icon(Icons.person),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Password"),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.2,
                                      // height: screenHeight * 0.1,
                                      child: TextField(
                                        controller: passwordLogIn,
                                        onChanged: (val) {
                                          passwordLogIn.value =
                                              TextEditingValue(
                                            text: val,
                                            selection: TextSelection.collapsed(
                                                offset: val.length),
                                          );
                                          setState(() {});
                                        },
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2.0),
                                          ),
                                          hintText: 'password',
                                          prefixIcon: Icon(Icons.person),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                  side: BorderSide(
                                                      color: Colors.blue)))),
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.arrow_forward),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: defaultPadding),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) {
                                  //   return Register();
                                  // }));
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(flex: 2)
          ],
        )));
  }
}
