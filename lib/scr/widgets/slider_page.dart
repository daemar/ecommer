import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  final String image;
  final String text;
  const SliderPage({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Center(child: Image(image: AssetImage(image))),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 3, 83, 79),
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          )),
        ),
      ],
    );
  }
}
