import 'package:ecommer/scr/controller/article_provider.dart';
import 'package:ecommer/scr/widgets/article_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavegatorBarSup extends StatelessWidget {
  const CustomNavegatorBarSup({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Categories = Provider.of<ArticleProvider>(context);
    return DefaultTabController(
      length: Categories.categories.length,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor),
            child: TabBar(
              onTap: (value) {
                Provider.of<ArticleProvider>(context, listen: false).status =
                    true;
              },
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
                for (int i = 0; i < Categories.categories.length; i++)
                  Row(children: [
                    const Icon(Icons.shower),
                    Text(
                      Categories.categories[i],
                    ),
                  ]),
              ],
            ),
          ),
          SizedBox(
            height: 360,
            child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (int j = 0; j < 4; j++)
                    ArticleCategory(category: Categories.categories[j]),
                ]),
          ),
        ],
      ),
    );
  }
}
