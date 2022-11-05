import 'package:ecommer/scr/controller/barbutton_provider.dart';
import 'package:ecommer/scr/widgets/article_detail_inf.dart';
import 'package:ecommer/scr/widgets/description_article_inf.dart';
import 'package:ecommer/scr/widgets/my_order_great.dart';
import 'package:ecommer/scr/widgets/my_order_list.dart';
import 'package:ecommer/scr/widgets/review_detail_inf.dart';
import 'package:ecommer/scr/widgets/title_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final barButtonProvider = Provider.of<BarbuttonProvider>(context);
    final List textbutton = ['All', 'Unpaid', 'Shipped', 'To be shipped'];
/*     final List _viewpage = [
      const MyorderGreat(),
      const DescriptionArticleInf(),
      const ReviewDetailInf(),
      const ReviewDetailInf()
    ]; */
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      primary: true,
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Column(children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: textbutton.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                barButtonProvider.selectOpt == index
                                    ? Theme.of(context).primaryColor
                                    : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            side: BorderSide(
                                color: !(barButtonProvider.selectOpt == index)
                                    ? Colors.green.shade100
                                    : Colors.teal)),
                        onPressed: () {
                          barButtonProvider.selectOpt = index;
                        },
                        child: Text(
                          textbutton[index],
                          style: TextStyle(
                              color: barButtonProvider.selectOpt == index
                                  ? Colors.white
                                  : Colors.teal),
                        )),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TitleIcon(
                      title: '   Orders List', icon: Icons.shopify, option: ''),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    barButtonProvider.button2 = false;
                    barButtonProvider.button1 = true;
                  },
                  icon: Icon(Icons.list,
                      color: barButtonProvider.button1
                          ? Colors.teal
                          : Colors.grey),
                ),
                IconButton(
                  icon: Icon(Icons.apps,
                      color: barButtonProvider.button2
                          ? Colors.teal
                          : Colors.grey),
                  onPressed: () {
                    barButtonProvider.button2 = true;
                    barButtonProvider.button1 = false;
                  },
                )
              ],
            ),
            if (barButtonProvider.button1 == true) const MyorderList(),
            if (barButtonProvider.button2 == true) const MyorderGreat(),
          ]),
        ])),
      ],
    );
  }
}
