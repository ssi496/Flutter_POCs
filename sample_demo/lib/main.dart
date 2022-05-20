import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sample_demo/widgets/ams_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  late AMSButton amsButton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: amsButton = AMSButton(
              buttonBackgroundColor: const Color(0xff003D6D),
              buttonTextColor: Colors.white,
              borderColor: Colors.black,
              buttonHeight: 50,
              onPressed: () {
                amsButton.buttonBackgroundColor = Color(Random().nextInt(0xffffffff));
                amsButton.text = Random().nextBool() ? "Login" : "Logout";
                amsButton.buttonSize = Random().nextBool() ? ButtonWidth.big : ButtonWidth.small;
              },
              buttonSize: ButtonWidth.big,
              text: "Login"),
        ),
      ),
    );
  }
}

