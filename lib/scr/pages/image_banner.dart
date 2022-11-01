import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String text;
  final String labelbutton;
  final String image;
  const ImageBanner(
      {super.key,
      required this.text,
      required this.labelbutton,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  padding: const EdgeInsets.all(20),
                  width: 200,
                  child: Text(text,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 3, 204, 194),
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.fade),
                      textAlign: TextAlign.right,
                      maxLines: 3)),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Button(text: labelbutton, route: 'account'))
            ],
          ),
        )
      ],
    );
  }
}
