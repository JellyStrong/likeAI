import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier {
  bool a = false;

  void change() {
    notifyListeners();
  }
}
