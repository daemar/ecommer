import 'package:ecommer/scr/widgets/button.dart';
import 'package:ecommer/scr/widgets/cart_appbar.dart';
import 'package:flutter/material.dart';

class CheckoutFinalizePage extends StatelessWidget {
  const CheckoutFinalizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[50],
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.teal[900], size: 25),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('Checkout',
              style: TextStyle(
                  color: Colors.teal[900],
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          actions: [
            const CartAppBar(),
            CircleAvatar(
              backgroundColor: Colors.teal.shade400,
              child: const Icon(Icons.person),
            ),
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Image.asset('assets/correct.png', height: 150, width: 150),
              ),
              Text('Your payment was',
                  style: TextStyle(
                      color: Colors.teal[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              Text('successfully processed',
                  style: TextStyle(
                      color: Colors.teal[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Button(
                    text: 'Your Orders',
                    route: '',
                    colorbutton: Colors.grey.shade200,
                    colortext: Theme.of(context).primaryColor),
              )
            ],
          ),
        ));
  }
}
