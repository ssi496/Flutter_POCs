import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropDownState();
  }
}

class _DropDownState extends State<DropDown> {
  var currencies = ["Dollar", "Rupees", "Pounds"];
  var currentItemSelected = "Rupees";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Drop Down"),
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
          body: Center(
            child: DropdownButton<String>(
              items: currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  this.currentItemSelected = newValue!;
                });
              },
              value: this.currentItemSelected,
            ),
          ),
        ));
  }
}
