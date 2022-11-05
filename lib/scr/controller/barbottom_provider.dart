import 'package:flutter/material.dart';

class BarbottomProvider extends ChangeNotifier {
  int _selectedMenuOpt = 2;
  int _selectOpt = 0;

  int get selectedMenuOpt {
    return _selectedMenuOpt;
  }

  int get selectOpt {
    return _selectOpt;
  }

  set selectedMenuOpt(int i) {
    _selectedMenuOpt = i;
    notifyListeners();
  }

  set selectOpt(int i) {
    _selectOpt = i;
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
      case 5:
        return "My Order";
    }
  }
}
