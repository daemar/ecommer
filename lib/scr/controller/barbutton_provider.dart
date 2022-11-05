import 'package:flutter/material.dart';

class BarbuttonProvider extends ChangeNotifier {
  int _selectOpt = 0;
  bool _button1 = true;
  bool _button2 = false;

  int get selectOpt {
    return _selectOpt;
  }

  bool get button1 {
    return _button1;
  }

  bool get button2 {
    return _button2;
  }

  set button1(bool b1) {
    _button1 = b1;
    notifyListeners();
  }

  set button2(bool b2) {
    _button2 = b2;
    notifyListeners();
  }

  set selectOpt(int i) {
    _selectOpt = i;
    notifyListeners();
  }
}
