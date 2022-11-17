import 'package:ecommer/scr/controller/article_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer/scr/controller/addcart_provider.dart';
import 'package:ecommer/scr/controller/barbottom_provider.dart';
import 'package:ecommer/scr/widgets/widget.dart';

class DetailArticlePage extends StatelessWidget {
  const DetailArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int id = ModalRoute.of(context)!.settings.arguments as int;
    final barBottomProvider = Provider.of<BarbottomProvider>(context);
    final cartprv = Provider.of<AddCartProvider>(context);
    final articleProvider = Provider.of<ArticleProvider>(context);
    articleProvider.getArticleId(id);
    final product = articleProvider.articleid;
    cartprv.setActiveItem(product);

    final List viewoption = [
      product.description != null
          ? ArticleDetailInf(
              description: product.description.toString(),
            )
          : const Center(child: CircularProgressIndicator()),
      product.description != ''
          ? DescriptionArticleInf(
              description: product.description.toString(),
            )
          : const Center(child: CircularProgressIndicator()),
      const ReviewDetailInf()
    ];
    // ignore: avoid_print
    print('PRODUCT:  $product');
    final List textbutton = ['Product', 'Detail', 'Review'];
    final double buttons = MediaQuery.of(context).size.width * 0.1;
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

                  product.description != ''
                      ? Container(
                          alignment: Alignment.bottomCenter,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(product.image.toString()),
                            fit: BoxFit.contain,
                          )),
                          child: //***************** TAB BOTTON  ****************** */
                              SizedBox(
                            height: 40,
                            child: Padding(
                              padding: EdgeInsets.only(left: buttons),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: viewoption.length,
                                itemBuilder: (_, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: barBottomProvider
                                                        .selectOpt ==
                                                    index
                                                ? Theme.of(context).primaryColor
                                                : Colors.white70,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            side: BorderSide(
                                                color: !(barBottomProvider
                                                            .selectOpt ==
                                                        index)
                                                    ? Colors.green.shade100
                                                    : Colors.teal)),
                                        onPressed: () {
                                          barBottomProvider.selectOpt = index;
                                        },
                                        child: Text(
                                          textbutton[index],
                                          style: TextStyle(
                                              color:
                                                  barBottomProvider.selectOpt ==
                                                          index
                                                      ? Colors.white
                                                      : Colors.teal),
                                        )),
                                  );
                                },
                              ),
                            ),
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),

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
                        const Spacer(),
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
              viewoption[barBottomProvider.selectOpt],
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
                            cartprv.disminishOneItem(cartprv.activeItems);
                          },
                        ),
                        //*********** VALUE CART*************************** */

                        Text(cartprv.valueing.toString(),
                            style: const TextStyle(color: Colors.white)),

                        //*********** BUTTON ADD*************************** */
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline_sharp,
                              color: Colors.white),
                          onPressed: () {
                            cartprv.addOneItem(cartprv.activeItems);
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
