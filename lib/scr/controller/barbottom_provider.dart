import 'package:flutter/material.dart';

class BarbottomProvider extends ChangeNotifier {
  int _selectedMenuOpt = 2;

  int get selectedMenuOpt {
    return _selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    _selectedMenuOpt = i;
    notifyListeners();
  }

  namePage() {
    switch (selectedMenuOpt) {
      case 0:
        return "Notification";
      case 1:
        return "Account";
      case 2:
        return "Home";
      case 3:
        return "Message";
      case 4:
        return "Favorite";
    }
  }
}
