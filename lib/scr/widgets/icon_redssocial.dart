import 'package:flutter/material.dart';

class IconRedSocial extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  const IconRedSocial(
      {super.key,
      required this.image,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height, width: width, child: Image(image: AssetImage(image)));
  }
}
