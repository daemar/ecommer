import 'package:flutter/material.dart';

class TitleIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final String option;
  final String? secondtitle;
  const TitleIcon(
      {super.key,
      required this.title,
      required this.icon,
      required this.option,
      this.secondtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, color: option == "ACCOUNT" ? Colors.grey : Colors.cyan[900]),
        Text(title,
            style: TextStyle(
                color: Colors.cyan[900],
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        const SizedBox(
          width: 20,
        ),
        if (option == "ACCOUNT")
          Text(secondtitle!,
              style: TextStyle(color: Colors.cyan[900], fontSize: 14)),
      ],
    );
  }
}
