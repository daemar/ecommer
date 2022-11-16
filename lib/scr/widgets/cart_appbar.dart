import 'package:ecommer/scr/controller/addcart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cartprvg = Provider.of<AddCartProvider>(context);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              cartprvg.getAllCarQty() > 0
                  ? Navigator.pushNamed(context, 'cart')
                  : SnackBar(
                      backgroundColor: Colors.teal[600],
                      content: const Text('Cart empty',
                          style: TextStyle(color: Colors.white)));
            },
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.teal.shade800,
              size: 38,
            ),
          ),
        ),
        // if (_listaCarro.length > 0)
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 9),
          child: CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.teal[400],
            foregroundColor: Colors.white,
            child: Text(
              cartprvg.getAllCarQty().toString(),
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
            ),
          ),
        ),
      ],
    );
  }
}
