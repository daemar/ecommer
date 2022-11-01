import 'package:ecommer/scr/widgets/bottom_price_cart.dart';
import 'package:ecommer/scr/widgets/item_shopping_cart.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<int, dynamic> articles = {
      0: {
        'descrip': 'Zapatillas',
        'price': 44.90,
        'img': 'assets/ropa2.jpg',
        'count': 0,
      },
      1: {
        'descrip': 'Dress',
        'price': 54.90,
        'img': 'assets/ropa3.jpg',
        'count': 0,
      },
      2: {
        'descrip': 'Zapatillas',
        'price': 64.90,
        'img': 'assets/ropa4.jpg',
        'count': 0,
      },
    };
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
                    itemCount: articles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: const EdgeInsets.all(8),
                          color: Colors.white,
                          child: ItemshoppingCart(
                              id: index,
                              image: articles[index]['img'],
                              title: articles[index]['descrip'],
                              subtitle: articles[index]['price'],
                              count: articles[index]['count']));
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
