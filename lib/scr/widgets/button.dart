import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color colorbutton;
  final Color colortext;
  final String route;
  const Button(
      {super.key,
      required this.text,
      required this.route,
      required this.colorbutton,
      required this.colortext});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: colorbutton),
      child: Text(text,
          style: TextStyle(
            color: colortext,
          )),
    );
  }
}
