import 'package:ecommer/scr/widgets/article_sale.dart';
import 'package:flutter/material.dart';

class DescriptionArticleInf extends StatelessWidget {
  final String description;
  const DescriptionArticleInf({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.description_outlined,
                  color: Colors.cyan[900], size: 30),
              const SizedBox(width: 30),
              Text('Description',
                  style: TextStyle(
                      color: Colors.cyan[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              description,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.cyan[900]),
            ),
          ),
          Row(
            children: [
              Icon(Icons.description_outlined,
                  color: Colors.cyan[900], size: 30),
              const SizedBox(width: 30),
              Text('Realted Product',
                  style: TextStyle(
                      color: Colors.cyan[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ],
          ),
          const ArticleSale(),
        ],
      ),
    );
  }
}
