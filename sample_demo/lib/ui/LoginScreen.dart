import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_demo/LanguageChangeProvider.dart';

import '../generated/l10n.dart';
import '../widgets/ams_button.dart';
import 'HomePage.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff003D6D),
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: const Color(0xff003D6D),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 100,
                    height: 50,
                    child: Image.asset('images/logo.png')),
              ),
            ),
            AMSButton(
                buttonBackgroundColor: Color(0xff003D6D),
                buttonTextColor: Colors.white,
                borderColor: Color(0xff003D6D),
                buttonHeight: 50,
                buttonWidth: ButtonWidth.big,
                onPressed: () {
                  context.read<LanguageChangeProvider>().changeLocale("hi");
                },
                text: S.of(context).welcome),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Email',
                    hintText: 'Enter email'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Password',
                    hintText: 'Enter password'),
              ),
            ),
            AMSButton(
                buttonBackgroundColor: Color(0xff003D6D),
                buttonTextColor: Colors.white,
                borderColor: Color(0xff003D6D),
                buttonHeight: 50,
                buttonWidth: ButtonWidth.small,
                onPressed: () {
                  context.read<LanguageChangeProvider>().changeLocale("hi");
                },
                text: "Hindi"),
            AMSButton(
                buttonBackgroundColor: Color(0xff003D6D),
                buttonTextColor: Colors.white,
                borderColor: Color(0xff003D6D),
                buttonHeight: 50,
                buttonWidth: ButtonWidth.small,
                onPressed: () {
                  context.read<LanguageChangeProvider>().changeLocale("en");
                },
                text: "English"),
            AMSButton(
                buttonBackgroundColor: Color(0xff003D6D),
                buttonTextColor: Colors.white,
                borderColor: Color(0xff003D6D),
                buttonHeight: 50,
                buttonWidth: ButtonWidth.small,
                onPressed: () {
                  context.read<LanguageChangeProvider>().changeLocale("es");
                },
                text: "Spanish"),
            AMSButton(
                buttonBackgroundColor: Color(0xff003D6D),
                buttonTextColor: Colors.white,
                borderColor: Color(0xff003D6D),
                buttonHeight: 50,
                buttonWidth: ButtonWidth.small,
                onPressed: () {
                  context.read<LanguageChangeProvider>().changeLocale("ta");
                },
                text: "Tamil"),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: AMSButton(
                    buttonBackgroundColor: const Color(0xff003D6D),
                    buttonTextColor: Colors.white,
                    borderColor: Colors.white70,
                    buttonHeight: 50,
                    buttonWidth: ButtonWidth.big,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    text: S.of(context).login)),
          ]),
        ),
      ),
    );
  }
}
