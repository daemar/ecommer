import 'package:ecommer/scr/controller/addcart_provider.dart';
import 'package:ecommer/scr/controller/barbottom_provider.dart';
import 'package:ecommer/scr/controller/barbutton_provider.dart';
import 'package:ecommer/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommer/scr/routes/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BarbottomProvider()),
          ChangeNotifierProvider(create: (_) => BarbuttonProvider()),
          ChangeNotifierProvider(create: (_) => AddCartProvider()),
        ],
        child: MaterialApp(
            title: 'Material App',
            initialRoute: 'home',
            debugShowCheckedModeBanner: false,
            routes: routes,
            theme: AppTheme.lightTheme));
  }
}
