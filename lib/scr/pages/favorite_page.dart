import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFieldSearch(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        const Center(
            child: Icon(
          Icons.favorite,
          color: Colors.grey,
          size: 100,
        )),
      ],
    );
  }
}
