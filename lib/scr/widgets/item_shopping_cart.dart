import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer/scr/controller/addcart_provider.dart';

class ItemshoppingCart extends StatelessWidget {
  final int id;
  final int i;
  final String image;
  final String title;
  final double? subtitle;
  final int count;
  const ItemshoppingCart(
      {super.key,
      required this.image,
      required this.title,
      this.subtitle,
      required this.count,
      required this.id,
      required this.i});

  @override
  Widget build(BuildContext context) {
    final cartprv = Provider.of<AddCartProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Image(image: NetworkImage(image), height: 60, width: 50),
          const SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 250,
                  child: Text(title,
                      style: TextStyle(color: Colors.teal[900]),
                      overflow: TextOverflow.ellipsis)),
              Text(
                '\$ ${subtitle!.toStringAsFixed(2)}',
                style: TextStyle(
                    color: Colors.teal[900], fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //*********** BUTTON ADD*************************** */
              IconButton(
                icon: Icon(Icons.add_circle_outline_sharp,
                    color: Colors.teal[900]),
                onPressed: () {
                  //barBottomProvi
                  //der.selectedMenuOpt = id;

                  cartprv.addOneItem(cartprv.cart[i]);
                },
              ),
              //*********** VALUE CART*************************** */

              Text(cartprv.cart[i].qty.toString(),
                  style: TextStyle(color: Colors.teal[900])),

              //*********** BUTTON DIMINISH*************************** */
              IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                color: Colors.teal[900],
                onPressed: () {
                  //barBottomProvider.selectedMenuOpt = id;
                  cartprv.disminishOneItem(cartprv.cart[i]);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
