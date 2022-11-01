import 'package:flutter/material.dart';

class ButtonBanner extends StatelessWidget {
  final IconData icon;
  final String text;
  const ButtonBanner({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      height: 20,
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.white),
        child: Row(
          children: [
            Icon(icon, color: Colors.teal),
            Text(text, style: const TextStyle(color: Colors.teal)),
          ],
        ),
      ),
    );
  }
}
