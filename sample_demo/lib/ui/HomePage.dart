import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sample_demo/ui/DisplayPage.dart';
import '../LanguageChangeProvider.dart';
import '../generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) => LanguageChangeProvider(),
      child: Builder(
        builder: (context) => MaterialApp(
          locale: Provider.of<LanguageChangeProvider>(context, listen: true)
              .currentLocale,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
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
        ),
      ),
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
  var items = [
    "Custom Big button",
    "Custom small button",
    "Drop down",
    "Login View"
  ];
  return items;
}
