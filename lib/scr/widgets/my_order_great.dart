import 'package:ecommer/scr/widgets/card_article.dart';
import 'package:flutter/material.dart';

class MyorderGreat extends StatelessWidget {
  const MyorderGreat({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1700,
      child: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 340,
          ),
          delegate: SliverChildBuilderDelegate(
            (_, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'articledetail');
                },
                child: const CardArticle(
                  description: 'Zogaa FameSweater',
                  price: '\$ 42.63',
                  textsale: '234324 sales',
                  icon: Icons.star,
                  favorite: 4.3,
                  image: 'assets/reloj.png',
                  sale: false,
                  elevation: 0,
                ),
              );
            },
            childCount: 10,
          ),
        )
      ]),
    );
  }
}
