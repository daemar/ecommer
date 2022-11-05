import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecommer/scr/widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            height: size.height * 0.1,
            child: Button(
              text: 'skip',
              route: 'signup',
              colorbutton: Theme.of(context).primaryColor,
              colortext: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: size.height * 0.65,
            child: PageView(
              controller: controller,
              children: const [
                SliderPage(
                    image: 'assets/compras.jpg',
                    text: 'Realice sus compras de manera rapida e inmendiata'),
                SliderPage(
                    image: 'assets/compras2.jpg',
                    text: 'Escoje el producto que se ajuste a tus necesidades'),
                SliderPage(
                    image: 'assets/compras.jpg',
                    text: 'Realice sus compras de manera rapida e inmendiata'),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: WormEffect(
                spacing: 16,
                dotColor: Colors.black26,
                activeDotColor: Colors.teal.shade700),
            onDotClicked: (count) {},
          ),
          Container(
              padding: const EdgeInsets.only(top: 40),
              alignment: Alignment.bottomRight,
              child: SizedBox(
                  width: size.width * 0.7,
                  child: const ButtonIcon(route: 'signup'))),
        ],
      ),
    );
  }
}
