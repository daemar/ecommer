import 'package:ecommer/scr/widgets/button_payment.dart';
import 'package:ecommer/scr/widgets/cart_appbar.dart';
import 'package:ecommer/scr/widgets/swiper_card_pay.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListTile(
                    leading:
                        Icon(Icons.payments_outlined, color: Colors.teal[900]),
                    title: Text('Payment Mode',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('Select your prefered payment mode',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 12,
                            fontWeight: FontWeight.w300))),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: SwiperCardPay(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Text('or checkout with',
                    style: TextStyle(color: Colors.grey)),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: ButtonPayment(
                  simple: true,
                  image: 'assets/paypal.png',
                  route: '',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: ButtonPayment(
                  simple: true,
                  image: 'assets/paymac.png',
                  route: '',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: ButtonPayment(
                  simple: false,
                  image: '',
                  text: 'Confirm',
                  price: 54.98,
                  route: 'checkoutfinal',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
