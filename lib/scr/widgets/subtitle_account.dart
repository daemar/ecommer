import 'package:flutter/material.dart';

class SubtitleAccount extends StatelessWidget {
  final String subtitle;
  final String valor;
  final String option;
  const SubtitleAccount(
      {super.key,
      required this.subtitle,
      required this.valor,
      required this.option});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.cyan[900]),
      ),
      option == 'ORDER'
          ? Container(
              alignment: Alignment.center,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Text(valor, style: TextStyle(color: Colors.grey.shade400)),
            )
          : Text(valor, style: TextStyle(color: Colors.grey.shade300)),
    ]);
  }
}
