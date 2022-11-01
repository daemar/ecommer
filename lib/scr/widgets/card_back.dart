import 'package:flutter/material.dart';

class CardBack extends StatelessWidget {
  //variables positioned
  final double? topp;
  final double? bottomp;
  final double? leftp;
  final double? rightp;
  final double? widthp;
  final double? heightp;
  final Widget? form;
  final bool widgetr;

//variables container
  final double? widthc;
  final double? heightc;
  final Color color;
  const CardBack({
    super.key,
    this.topp,
    this.bottomp,
    this.leftp,
    this.rightp,
    this.widthp,
    this.heightp,
    required this.color,
    this.widthc,
    this.heightc,
    this.form,
    required this.widgetr,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topp,
      //bottom: left,
      left: leftp,
      right: rightp,
      child: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
        alignment: Alignment.center,
        height: heightc,
        width: widthc,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: widgetr ? form : null,
      ),
    );
  }
}
