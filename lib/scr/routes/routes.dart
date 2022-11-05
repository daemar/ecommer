import 'package:ecommer/scr/widgets/menu_option_bottom.dart';
import 'package:flutter/material.dart';
import 'package:ecommer/scr/pages/pages.dart';

final routes = <String, WidgetBuilder>{
  'home': (_) => const HomePage(),
  'bar': (_) => const MenuOptionBottom(),
  'signup': (_) => const SignUpPage(),
  'signin': (_) => const SignInPage(),
  'articulo': (_) => const HomeArticuloPage(),
  'notification': (_) => const NotificationPage(),
  'account': (_) => const AccountPage(),
  'articledetail': (_) => const DetailArticlePage(),
  'cart': (_) => const CartPage(),
  'checkout': (_) => const CheckoutPage(),
  'myorder': (_) => const MyOrderPage(),
  'checkoutfinal': (_) => const CheckoutFinalizePage(),
};
