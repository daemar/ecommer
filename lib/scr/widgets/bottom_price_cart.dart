import 'package:ecommer/scr/controller/addcart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomPriceCart extends StatelessWidget {
  final String text;
  const BottomPriceCart({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final cartprv = Provider.of<AddCartProvider>(context);
    double montt = (cartprv.montAllCarQty() * 0.2) + cartprv.montAllCarQty();
    double monti = cartprv.montAllCarQty() * 0.2;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Subtotal',
              style: TextStyle(
                  color: Colors.teal[900], fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              '\$ ${cartprv.montAllCarQty().toStringAsFixed(2)}',
              style: TextStyle(
                  color: Colors.teal[900], fontWeight: FontWeight.bold),
            ),
          ),
        ]),
        Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'TAX(20%)',
              style: TextStyle(
                  color: Colors.teal[900], fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              monti.toStringAsFixed(2),
              style: TextStyle(
                  color: Colors.teal[900], fontWeight: FontWeight.bold),
            ),
          ),
        ]),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'checkout', arguments: montt);
          },
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).primaryColor,
              ),
              width: 350,
              height: 45,
              child: Row(children: [
                const SizedBox(
                  width: 150,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  '\$ ${((cartprv.montAllCarQty() * 0.2) + cartprv.montAllCarQty()).toStringAsFixed(2)}',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ])),
        ),
      ]),
    );
  }
}
