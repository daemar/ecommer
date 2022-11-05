import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class ArticleCategory extends StatelessWidget {
  final String category;
  const ArticleCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    String img = '1';

    switch (category) {
      case '1':
        img = 'assets/ropa2.jpg';
        break;
      case '2':
        img = 'assets/ropa3.jpg';
        break;
      case '3':
        img = 'assets/ropa4.jpg';
        break;
    }
    return CustomScrollView(
        /* physics: const NeverScrollableScrollPhysics(), */
        primary: false,
        slivers: [
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
                  child: CardArticle(
                      description: 'Zogaa FameSweater',
                      price: '\$ 42.63',
                      textsale: '234324 sales',
                      icon: Icons.star,
                      favorite: 4.3,
                      image: img,
                      sale: false,
                      elevation: 0,
                      id: index.toString()),
                );
              },
              childCount: 10,
            ),
          )
        ]);
  }
}
