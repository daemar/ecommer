import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  final String description;
  final String? image;
  final String price;
  final String id;
  final String textsale;
  final IconData icon;
  final double favorite;
  final double elevation;
  final bool sale;
  const CardArticle(
      {super.key,
      required this.description,
      required this.price,
      required this.textsale,
      required this.icon,
      required this.favorite,
      this.image,
      required this.sale,
      required this.elevation,
      required this.id});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      //padding: EdgeInsets.all(20),
      //alignment: Alignment.topCenter,
      height: 360,
      width: width * 0.50,
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            //****  IMAGEN */
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: id,
                child: Image(
                  image: AssetImage(image!),
                  height: 200,
                  width: 140,
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            CardDescription(),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CardDescription() {
    return SizedBox(
      height: 116,
      child: Card(
        elevation: elevation,
        shadowColor: Colors.grey,
        child: Column(
          children: [
            //const SizedBox(height: 10),
            //********  DESCRIPTION */
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(description,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.teal[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    overflow: TextOverflow.fade,
                  )),
            ),

            //*********  PRICE */
            !sale
                ? Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(price.toString(),
                        style: TextStyle(
                          color: Colors.teal[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )))
                :
                //******** LINEARPROGRESS */
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const LinearProgressIndicator(
                      value: 0.2,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(Colors.teal),
                    ),
                  ),
            //*********** START ROW */
            Row(children: [
              //*********  SALE */
              Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(textsale,
                      style: TextStyle(color: Colors.teal[800]))),
              //***** SPACE */
              const SizedBox(width: 20),

              ///**********ICON */
              Icon(
                icon,
                color: Colors.yellow,
              ),
              //*********** FAVORITE */
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(favorite.toString(),
                      style: TextStyle(
                        color: Colors.teal[800],
                        fontWeight: FontWeight.bold,
                      )))
            ]),
          ],
        ),
      ),
    );
  }
}
