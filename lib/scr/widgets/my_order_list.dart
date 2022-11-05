import 'package:ecommer/scr/widgets/card_article_list.dart';
import 'package:flutter/material.dart';

class MyorderList extends StatelessWidget {
  const MyorderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 110,
          ),
          delegate: SliverChildBuilderDelegate(
            (_, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'articledetail');
                },
                child: const CardArticleList(
                    description: 'Digital Display Barcelet Watch',
                    price: '\$ 63.98',
                    elevation: 0,
                    icondate: Icons.calendar_month_outlined,
                    iconcode: Icons.timeline_outlined,
                    textdate: '2019-08-09 20:09',
                    textcode: 'RHDGGGSTDGD45DD',
                    count: '2',
                    image: 'assets/reloj.png'),
              );
            },
            childCount: 10,
          ),
        )
      ]),
    );
  }
}
