import 'package:flutter/material.dart';

class SaleBanner extends StatelessWidget {
  final IconData icon;
  final String textsale;
  final String texttime;
  const SaleBanner(
      {super.key,
      required this.icon,
      required this.textsale,
      required this.texttime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Colors.teal[800],
          size: 30,
        ),
        Text(
          textsale,
          style: TextStyle(
              color: Colors.teal[800],
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 30,
        ),
        Text(texttime, style: TextStyle(color: Colors.teal[800], fontSize: 12)),
      ],
    );
  }
}
