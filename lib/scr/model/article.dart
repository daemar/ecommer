// To parse this JSON data, do
//
//     final article = articleFromMap(jsonString);

import 'dart:convert';

class ArticleList {
  final List<Article> articles;

  ArticleList({
    required this.articles,
  });

  factory ArticleList.fromJson(List<dynamic> parsedJson) {
    List<Article> articles = <Article>[];
    articles = parsedJson.map((i) => Article.fromJson(i)).toList();

    return ArticleList(articles: articles);
  }
}

class Article {
  Article({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
    required this.qty,
  });

  int? id;
  String? title;
  double? price;
  String? description;
  Category? category;
  String? image;
  Rating? rating;
  int qty = 0;

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json["id"],
      title: json["title"],
      price: json["price"].toDouble(),
      description: json["description"],
      category: categoryValues.map[json["category"]],
      image: json["image"],
      rating: Rating.fromMap(json["rating"]),
      qty: json["qty"] = 1,
    );
  }

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json[categoryValues.map[json["category"]]],
        image: json["image"],
        rating: Rating.fromMap(json["rating"]),
        qty: json["qty"] = 1,
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": categoryValues.reverse[category],
        "image": image,
        "rating": rating!.toMap(),
      };
}

// ignore: constant_identifier_names
enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

final categoryValues = EnumValues({
  "electronics": Category.ELECTRONICS,
  "jewelery": Category.JEWELERY,
  "men's clothing": Category.MEN_S_CLOTHING,
  "women's clothing": Category.WOMEN_S_CLOTHING
});

class Rating {
  Rating({
    this.rate,
    this.count,
  });

  double? rate;
  int? count;

  factory Rating.fromJson(String str) => Rating.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Rating.fromMap(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toMap() => {
        "rate": rate,
        "count": count,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}
