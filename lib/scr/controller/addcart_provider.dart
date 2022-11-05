import 'package:flutter/widgets.dart';

class AddCartProvider extends ChangeNotifier {
  int _dcountArticle = 0;
  int _gcountArticle = 0;
  String _image = '';

  int get dcountArticle => _dcountArticle;
  int get gcountArticle => _dcountArticle;
  String get image => _image;

  set imge(String i) {
    _image = i;
    notifyListeners();
  }

  void add() {
    _dcountArticle++;
    notifyListeners();
  }

  void disminish() {
    _dcountArticle--;
    if (_dcountArticle < 0) _dcountArticle = 0;
    notifyListeners();
  }

  void gadd() {
    _gcountArticle = _gcountArticle + _dcountArticle;
    if (_gcountArticle < 0) _gcountArticle = 0;
    notifyListeners();
  }
}
