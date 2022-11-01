import 'package:flutter/material.dart';

class BottomPriceCart extends StatelessWidget {
  final String text;
  const BottomPriceCart({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
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
              '\$50.23',
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
              '\$13.23',
              style: TextStyle(
                  color: Colors.teal[900], fontWeight: FontWeight.bold),
            ),
          ),
        ]),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'checkout');
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
                const Text(
                  '\$55.36',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ])),
        ),
      ]),
    );
  }
}
