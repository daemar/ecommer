import 'package:flutter/material.dart';

class CardArticleList extends StatelessWidget {
  final String description;
  final String? image;
  final String price;
  final String textdate;
  final String textcode;
  final String count;
  final IconData icondate;
  final IconData iconcode;
  final double elevation;
  const CardArticleList(
      {super.key,
      required this.description,
      required this.price,
      this.image,
      required this.elevation,
      required this.icondate,
      required this.iconcode,
      required this.textdate,
      required this.textcode,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.all(10),
      //alignment: Alignment.topCenter,
      height: 250,
      child: Card(
        color: Colors.white,
        child: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
          child: Row(
            children: [
              //****  IMAGEN */
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(image!),
                  height: 200,
                  width: 120,
                  alignment: Alignment.topLeft,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(description,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.teal[800],
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            overflow: TextOverflow.fade,
                          )),
                    ),
                    Row(
                      children: [
                        Icon(icondate, color: Colors.grey[200]),
                        Text(textdate,
                            style: TextStyle(
                              color: Colors.teal[800],
                              fontSize: 10,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(iconcode, color: Colors.grey[200]),
                        Text(textcode,
                            style: TextStyle(
                              color: Colors.teal[800],
                              fontSize: 10,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(children: [
                  Text(price,
                      style: TextStyle(
                        color: Colors.teal[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.grey.shade200)),
                      child: Text('    x $count    ',
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 12)),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
