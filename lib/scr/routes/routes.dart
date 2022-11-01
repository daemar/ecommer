import 'package:ecommer/scr/pages/cart_page.dart';
import 'package:ecommer/scr/pages/checkout_page.dart';
import 'package:ecommer/scr/pages/detail_article_page.dart';
import 'package:ecommer/scr/widgets/menu_option_bottom.dart';
import 'package:flutter/material.dart';
import 'package:ecommer/scr/pages/account_page.dart';
import 'package:ecommer/scr/pages/home_articulo_page.dart';
import 'package:ecommer/scr/pages/home_page.dart';
import 'package:ecommer/scr/pages/notification_page.dart';
import 'package:ecommer/scr/pages/signin_page.dart';
import 'package:ecommer/scr/pages/signup_page.dart';

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
};
