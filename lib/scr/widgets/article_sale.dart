import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class ArticleSale extends StatelessWidget {
  const ArticleSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      padding: const EdgeInsets.only(right: 20, top: 20),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Stack(
            children: [
              const CardArticle(
                description: 'Zogaa FameSweater fdhsflhdsflfkhdsl',
                price: '\$ 42.63',
                textsale: '234324 sales',
                icon: Icons.star,
                favorite: 4.3,
                image: 'assets/ropa2.jpg',
                sale: true,
                elevation: 4.0,
              ),
              Positioned(
                right: 40,
                child: Container(
                    alignment: Alignment.topRight,
                    child: const Button(text: '20 %', route: '')),
              ),
            ],
          );
        },
      ),
    );
  }
}
