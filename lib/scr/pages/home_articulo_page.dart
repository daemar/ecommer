import 'package:card_swiper/card_swiper.dart';
import 'package:ecommer/scr/widgets/article_sale.dart';
import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeArticuloPage extends StatelessWidget {
  const HomeArticuloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      primary: true,
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Column(
            children: [
              //Text de Busqueda
              const TextFieldSearch(),
              //********    Banner de Imagenes********* */
              Container(
                height: 250,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 20),
                child: Swiper(
                  itemBuilder: (_, int index) {
                    return const ImageBanner(
                      text: 'A room without books is like a body without ',
                      labelbutton: '    Collection    ',
                      image: 'assets/ropa1.jpg',
                    );
                  },
                  itemCount: 3,
                  pagination:
                      const SwiperPagination(alignment: Alignment.bottomRight),
                  // control: const SwiperControl(),
                ),
              ),
              //****************************************** */
              //******************Banner de Sale******************** */
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                child: SaleBanner(
                    icon: Icons.campaign_outlined,
                    textsale: 'Flash Sales',
                    texttime: 'End in 19:30:15'),
              ),

              //*************  ARTICLE  SALE*/

              const ArticleSale(),
              //*******BANNER TITLE***** */
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TitleIcon(
                  title: 'Recommended For You',
                  icon: Icons.star_border_purple500_outlined,
                  option: '',
                ),
              ),

              //*******BANNER CATEGORIA */
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: CustomNavegatorBarSup(),
              ),
            ],
          )
        ])),

        //**********ARTICLE CATEGORIA* */

        /* SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 340,
          ),
          delegate: SliverChildBuilderDelegate(
            (_, index) {
              return const CardArticle(
                description: 'Zogaa FameSweater fdhsflhdsflfkhdsl',
                price: '\$ 42.63',
                textsale: '234324 sales',
                icon: Icons.star,
                favorite: 4.3,
                image: 'assets/ropa2.jpg',
                sale: false,
                elevation: 0,
              );
            },
            childCount: 10,
          ),
        ) */
      ],
    );
  }
}
