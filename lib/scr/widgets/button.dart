import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final String route;
  const Button(
      {super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Theme.of(context).primaryColor),
      child: Text(text,
          style: const TextStyle(
            color: Colors.white,
          )),
    );
  }
}
