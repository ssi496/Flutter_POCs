import 'package:flutter/material.dart';

class LanguageChangeProvider with ChangeNotifier {
  Locale _currentLocale = Locale("en");

  Locale get currentLocale => _currentLocale;

  void changeLocale(String _locale) {
    this._currentLocale = Locale(_locale);
    notifyListeners();
  }
}
