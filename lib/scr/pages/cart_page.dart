import 'package:ecommer/scr/controller/addcart_provider.dart';
import 'package:ecommer/scr/widgets/bottom_price_cart.dart';
import 'package:ecommer/scr/widgets/item_shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/article_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartprv = Provider.of<AddCartProvider>(context);
    Provider.of<ArticleProvider>(context).status = true;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.teal[900], size: 25),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Cart',
            style: TextStyle(
                color: Colors.teal[900],
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.teal.shade400,
            child: const Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListTile(
                    leading: Icon(Icons.shopping_cart_outlined,
                        color: Colors.teal[900]),
                    title: Text('Shpping Cart',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('Verify your quanlity  and click checkout',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 12,
                            fontWeight: FontWeight.w300))),
                SizedBox(
                  height: 440,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: cartprv.cart.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: const EdgeInsets.all(8),
                          color: Colors.white,
                          child: ItemshoppingCart(
                            id: index,
                            image: cartprv.cart[index].image.toString(),
                            title: cartprv.cart[index].title.toString(),
                            subtitle: cartprv.cart[index].price,
                            count: cartprv.cart[index].qty,
                            i: index,
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: BottomPriceCart(text: "Checkout"),
          ),
        ],
      ),
    );
  }
}
