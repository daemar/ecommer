import 'dart:convert';

import 'package:ecommer/scr/model/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;

class ArticleProvider extends ChangeNotifier {
  final String _baseurl = 'fakestoreapi.com';
  String category = '';
  int id = 0;
  bool status = true;
  bool statusid = true;
  List<dynamic> article = [];
  Article articleid = Article(qty: 0);
  List<dynamic> categories = [];
  ArticleList articlecategory = ArticleList(articles: []);

  ArticleProvider() {
    // ignore: avoid_print
    print('Article Provider Iniciadlizado');
    getCategory();
    getArticle();
    getArticleCategory(category);
    getArticleId(id);
  }

  getArticle() async {
    final response = await rootBundle.loadString('assets/products.json');

    final List<dynamic> decodedData = json.decode(response);
    article = decodedData;
  }

  Future<List> getCategory() async {
    var url = Uri.https(_baseurl, '/products/categories');

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final List<dynamic> decodedDataC = json.decode(response.body);
    categories = decodedDataC;
    notifyListeners();
    return categories;
  }

  getArticleCategory(String category) async {
    var url = Uri.https(_baseurl, '/products/category/$category');

    final response = await http.get(url);
    if (response.body.isNotEmpty) {
      final jsonResponse = json.decode(response.body);
      ArticleList articleList = ArticleList.fromJson(jsonResponse);
      articlecategory = articleList;

      if (status == true) {
        notifyListeners();
        status = false;
      }
    }

    /* if (category.isNotEmpty) {
      var url = Uri.https(_baseurl, '/products/category/$category');
      final response = await http.get(url);

      // Await the http get response, then decode the json-formatted response.
      List<dynamic> decodedDataAC = json.decode(response.body);
      articlecategory = decodedDataAC;} */
  }

  getArticleId(int id) async {
    var url = Uri.https(_baseurl, '/products/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        final jsonResponse = json.decode(response.body);
        Article articleList = Article.fromJson(jsonResponse);
        articleid = articleList;
        if (statusid == true) {
          notifyListeners();
          statusid = false;
        }
      }
    }
  }

  getSuggestionsByQuery(String search) async {
    var url = Uri.https(_baseurl, '/products/$id');
    final response = await http.get(url);
    if (response.body.isNotEmpty) {
      final jsonResponse = json.decode(response.body);
      Article articleList = Article.fromJson(jsonResponse);
      articleid = articleList;
      /*    if (statusid == true) {
        notifyListeners();
        statusid = false;
      } */
    }
  }
}
