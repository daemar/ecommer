import 'dart:convert';
import 'package:ecommer/scr/model/article.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class AddCartProvider extends ChangeNotifier {
  final List<Article> _cart = [];
  List<Article> _item = [];
  int valueing = 0;
  Article _activeItem = Article(qty: 1);

  getProduct() async {
    final response = await rootBundle.loadString('assets/products.json');

    //final List<dynamic> decodedData = json.decode(response);
    final jsonResponse = json.decode(response);
    ArticleList articleList = ArticleList.fromJson(jsonResponse);
    _item = articleList.articles;
    notifyListeners();
    /*  final response = await rootBundle.loadString('assets/products.json');

    List<Article> decodedData = json.decode(response) as List<Article>;

    /// resp = decodedData.cast<Article>();

    item = decodedData; */
  }

  List<Article> get cart => _cart;
  List<Article> get item => _item;
  get activeItems => _activeItem;

  deleteProduct() {
    _cart.removeWhere((element) => true);
  }

  AddCartProvider() {
    // ignore: avoid_print
    print('Cart Provider Iniciadlizado');
    getProduct();
  }

  setActiveItem(Article item) {
    _activeItem = item;
  }

  addOneItem(Article item) {
    valueing = 0;
    final inCart = _cart.firstWhereOrNull((element) => element.id == item.id);
    if (inCart != null) {
      valueing = inCart.qty + 1;
      inCart.qty = valueing;
    } else {
      _cart.add(item);
      valueing = 1;
    }
    notifyListeners();
    return valueing;
  }

  disminishOneItem(Article item) {
    final inCart = _cart.firstWhere((element) => element.id == item.id);
    // ignore: unnecessary_null_comparison
    if (inCart != null && inCart.qty == 1) {
      _cart.remove(item);
      valueing = 0;
    } else {
      valueing = inCart.qty - 1;
      inCart.qty = valueing;
    }
    notifyListeners();
    return valueing;
  }

//*****************TOTAL PRODUCT IN CART********************* */
  getAllCarQty() {
    int total = 0;
    valueing = 0;
    for (int i = 0; i < cart.length; i++) {
      total += _cart[i].qty;
    }
    return total;
  }

//***************SHOW TOTAL PAY ********* */
  montAllCarQty() {
    valueing = 0;
    double montt = 0;
    for (int i = 0; i < cart.length; i++) {
      montt = montt + (_cart[i].qty * _cart[i].price!.toDouble());
    }
    return montt;
  }

  /*  int _dcountArticle = 0;
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
  } */
}
