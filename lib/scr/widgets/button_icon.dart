import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final String route;
  const ButtonIcon({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20))),
          backgroundColor: const Color.fromARGB(255, 3, 204, 194)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text("Sign up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              )),
          Icon(Icons.east),
        ],
      ),
    );
  }
}
