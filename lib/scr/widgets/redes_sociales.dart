import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class RedesSociales extends StatelessWidget {
  const RedesSociales({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconRedSocial(image: 'assets/facebook.jpg', width: 50, height: 50),
          IconRedSocial(image: 'assets/twitter.jpg', width: 50, height: 50),
          IconRedSocial(image: 'assets/googleplus.jpg', width: 50, height: 50),
          IconRedSocial(image: 'assets/likedin.jpg', width: 50, height: 50),
        ]);
  }
}
