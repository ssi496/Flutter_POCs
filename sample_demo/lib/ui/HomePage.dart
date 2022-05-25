import 'package:flutter/material.dart';
import 'package:sample_demo/ui/DisplayPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home page",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            backgroundColor: const Color(0xff003D6D),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {}),
          ),
          body: getListView()),
    );
  }
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DisplayPage(index)),
            );
          },
        );
      });

  return listView;
}

List<String> getListElements() {
  var items = ["Custom Big button", "Custom small button", "Drop down", "Login View"];
  return items;
}
