// ignore_for_file: avoid_print

import 'package:ecommer/scr/controller/article_provider.dart';
import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleCategory extends StatelessWidget {
  final String category;
  const ArticleCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    /* final cart = Provider.of<AddCartProvider>(context); */
    final articleProvdier = Provider.of<ArticleProvider>(context);
    articleProvdier.getArticleCategory(category);
    final product = articleProvdier.articlecategory;
    int count = product.articles.length;
    return CustomScrollView(primary: false, slivers: [
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 340,
        ),
        delegate: SliverChildBuilderDelegate((_, index) {
          print(product.articles[index].title);
          print(count);
          return GestureDetector(
              onTap: () {
                Provider.of<ArticleProvider>(context, listen: false).statusid =
                    true;
                Navigator.pushNamed(context, 'articledetail',
                    arguments: product.articles[index].id);
              },
              child: CardArticle(
                  description: product.articles[index].title.toString(),
                  price: '\$ ${product.articles[index].price.toString()}',
                  textsale: product.articles[index].rating!.count!.toDouble(),
                  icon: Icons.star,
                  favorite: product.articles[index].rating!.rate!.toDouble(),
                  image: product.articles[index].image,
                  sale: false,
                  elevation: 0,
                  id: index.toString()));
        }, childCount: count),
      )
    ]);
  }
}
