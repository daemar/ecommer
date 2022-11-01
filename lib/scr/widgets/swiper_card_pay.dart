import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwiperCardPay extends StatelessWidget {
  const SwiperCardPay({super.key});

  @override
  Widget build(BuildContext context) {
    final List card = [
      'assets/visa.png',
      'assets/master.png',
      'assets/amex.png'
    ];
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          card[index],
          fit: BoxFit.fill,
        );
      },
      itemCount: card.length,
      itemWidth: 350.0,
      itemHeight: 200.0,
      layout: SwiperLayout.TINDER,
    );
  }
}
