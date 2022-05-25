import 'package:flutter/material.dart';
import 'package:sample_demo/ui/HomePage.dart';
import 'package:sample_demo/widgets/ams_button.dart';

import 'DropDown.dart';
import 'LoginScreen.dart';

class DisplayPage extends StatelessWidget {
  int index = 0;

  DisplayPage(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return launchCustomBigButtonView(context);
      case 1:
        return launchCustomSmallButtonView(context);
      case 2:
        return DropDown();
      case 3:
        return LoginScreen();
    }
    return const Text("Invalid choice");
  }

  Widget launchCustomSmallButtonView(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Small Button"),
            backgroundColor: const Color(0xff003D6D),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: Center(
            child: AMSButton(
                buttonBackgroundColor: const Color(0xff003D6D),
                buttonTextColor: Colors.white,
                borderColor: Colors.black,
                buttonHeight: 50,
                buttonWidth: ButtonWidth.small,
                onPressed: () {},
                text: "Small"),
          ),
        ));
  }

  Widget launchCustomBigButtonView(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Big Button"),
            backgroundColor: const Color(0xff003D6D),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Center(
            child: AMSButton(
                buttonBackgroundColor: const Color(0xff003D6D),
                buttonTextColor: Colors.white,
                borderColor: Colors.black,
                buttonHeight: 50,
                buttonWidth: ButtonWidth.big,
                onPressed: () {},
                text: "Big"),
          ),
        ));
  }
}
