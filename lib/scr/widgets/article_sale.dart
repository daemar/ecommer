import 'package:ecommer/scr/controller/article_provider.dart';
import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleSale extends StatelessWidget {
  const ArticleSale({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ArticleProvider>(context).article;
    return Container(
      height: 360,
      padding: const EdgeInsets.only(right: 20, top: 20),
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'articledetail',
                  arguments: product[index]['id']);
            },
            child: Stack(
              children: [
                CardArticle(
                  description: product[index]['title'],
                  price: product[index]['price'].toString(),
                  textsale: product[index]['rating']['count'].toDouble(),
                  icon: Icons.star,
                  favorite: product[index]['rating']['rate'],
                  image: product[index]['image'],
                  sale: true,
                  elevation: 4.0,
                  id: index.toString(),
                ),
                Positioned(
                  right: 40,
                  child: Container(
                      alignment: Alignment.topRight,
                      child: Button(
                        text: '20 %',
                        route: '',
                        colorbutton: Theme.of(context).primaryColor,
                        colortext: Colors.white,
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
