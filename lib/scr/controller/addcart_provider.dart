import 'package:flutter/widgets.dart';

class AddCartProvider extends ChangeNotifier {
  int _dcountArticle = 0;
  int _gcountArticle = 0;

  int get dcountArticle => _dcountArticle;
  int get gcountArticle => _dcountArticle;

  void add() {
    _dcountArticle++;
    notifyListeners();
  }

  void disminish() {
    _dcountArticle--;
    notifyListeners();
  }

  void gadd() {
    _gcountArticle = _gcountArticle + _dcountArticle;
    notifyListeners();
  }
}
