import 'package:flutter/material.dart';

class ButtonPayment extends StatelessWidget {
  final String? text;
  final double? price;
  final String image;
  final bool simple;
  const ButtonPayment(
      {super.key,
      this.text,
      this.price,
      required this.image,
      required this.simple});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: simple ? Colors.grey[200] : Theme.of(context).primaryColor,
          ),
          width: 350,
          height: 45,
          child: Row(children: [
            const SizedBox(
              width: 150,
            ),
            if (!simple)
              Text(
                text!,
                style: const TextStyle(color: Colors.white),
              ),
            if (!simple)
              const SizedBox(
                width: 50,
              ),
            if (!simple)
              Text(
                '\$ ${price!}',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            if (simple) Image(image: AssetImage(image), width: 100, height: 30),
          ])),
    );
  }
}
