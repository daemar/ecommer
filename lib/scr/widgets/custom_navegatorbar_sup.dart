import 'package:ecommer/scr/widgets/article_category.dart';
import 'package:flutter/material.dart';

class CustomNavegatorBarSup extends StatelessWidget {
  const CustomNavegatorBarSup({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor),
            child: TabBar(
              isScrollable: true,
              indicatorPadding: const EdgeInsets.all(10),
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.white,
              labelStyle: const TextStyle(fontSize: 12),
              labelPadding: const EdgeInsets.only(
                  left: 35, right: 35, top: 10, bottom: 10),
              indicator: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              tabs: [
                Row(
                  children: const [
                    Icon(Icons.shower),
                    Text(
                      'Men',
                    )
                  ],
                ),
                Row(
                  children: const [Icon(Icons.shower), Text('Woman')],
                ),
                Row(
                  children: const [Icon(Icons.shower), Text('child')],
                ),
                Row(
                  children: const [Icon(Icons.shower), Text('accesories')],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 1700,
            child:
                TabBarView(physics: NeverScrollableScrollPhysics(), children: [
              ArticleCategory(
                category: '1',
              ),
              ArticleCategory(category: '2'),
              ArticleCategory(category: '3'),
              ArticleCategory(category: '1'),
            ]),
          ),
        ],
      ),
    );
  }
}
