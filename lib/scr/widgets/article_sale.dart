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
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'articledetail');
            },
            child: Stack(
              children: [
                const CardArticle(
                  description: 'Zogaa FameSweater fdhsflhdsflfkhdsl',
                  price: '\$ 42.63',
                  textsale: '234324 sales',
                  icon: Icons.star,
                  favorite: 4.3,
                  image: 'assets/reloj.png',
                  sale: true,
                  elevation: 4.0,
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
