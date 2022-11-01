import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer/scr/controller/addcart_provider.dart';
import 'package:ecommer/scr/controller/barbottom_provider.dart';
import 'package:ecommer/scr/widgets/article_detail_inf.dart';
import 'package:ecommer/scr/widgets/description_article_inf.dart';
import 'package:ecommer/scr/widgets/review_detail_inf.dart';
import 'package:ecommer/scr/widgets/widget.dart';

class DetailArticlePage extends StatelessWidget {
  const DetailArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final barBottomProvider = Provider.of<BarbottomProvider>(context);
    final cartprv = Provider.of<AddCartProvider>(context);
    final List textbutton = ['Product', 'Detail', 'Review'];
    final List viewoption = [
      const ArticleDetailInf(),
      const DescriptionArticleInf(),
      const ReviewDetailInf()
    ];
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  //*************** IMAGE CONTAINER************************** */

                  Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      // opacity: 30,
                      image: AssetImage("assets/ropa3.png"),
                      fit: BoxFit.contain,
                    )),
                    child: //***************** TAB BOTTON  ****************** */
                        SizedBox(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 85),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: viewoption.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          barBottomProvider.selectedMenuOpt ==
                                                  index
                                              ? Theme.of(context).primaryColor
                                              : Colors.white70,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      side: BorderSide(
                                          color: !(barBottomProvider
                                                      .selectedMenuOpt ==
                                                  index)
                                              ? Colors.green.shade100
                                              : Colors.teal)),
                                  onPressed: () {
                                    barBottomProvider.selectedMenuOpt = index;
                                  },
                                  child: Text(
                                    textbutton[index],
                                    style: TextStyle(
                                        color:
                                            barBottomProvider.selectedMenuOpt ==
                                                    index
                                                ? Colors.white
                                                : Colors.teal),
                                  )),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  /* Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.transparent.withOpacity(0.9),
                              Colors.transparent.withOpacity(0.6),
                              Colors.white.withOpacity(0.9),
                            ],
                            stops: [
                              0.5,
                              0.3,
                              0.5
                            ],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter),
                      )), */

                  //************ APPBAR *********** */
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back,
                              color: Colors.teal, size: 25),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                        ),
                        const CartAppBar(),
                        CircleAvatar(
                          backgroundColor: Colors.teal.shade400,
                          child: const Icon(Icons.person),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //********* VIEWTAB************ */
              viewoption[barBottomProvider.selectedMenuOpt],
            ],
          ),
        ),

        //***************  BOTTOM NAVIGATOR BAR*********************** */
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //**************** BUTTON FAVORITE****************** */
              Container(
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor),
                child: IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              //**************** ADD CART********************** */
              Container(
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).primaryColor),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Add to Cart',
                            style: TextStyle(color: Colors.white)),
                        //*********** BUTTON DIMINISH*************************** */
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          color: Colors.white,
                          onPressed: () {
                            cartprv.disminish();
                          },
                        ),
                        //*********** VALUE CART*************************** */

                        Text(cartprv.dcountArticle.toString(),
                            style: const TextStyle(color: Colors.white)),

                        //*********** BUTTON ADD*************************** */
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline_sharp,
                              color: Colors.white),
                          onPressed: () {
                            cartprv.add();
                          },
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
