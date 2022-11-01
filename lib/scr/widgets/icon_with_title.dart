import 'package:flutter/material.dart';

class IconwithTitle extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconwithTitle({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(text, style: TextStyle(color: Colors.cyan[900])),
      ],
    );
  }
}
