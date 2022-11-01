import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: const Color.fromARGB(255, 3, 181, 204),
    /*   textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.deepPurpleAccent),
      headline2: TextStyle(color: Colors.deepPurpleAccent),
      bodyText2: TextStyle(color: Colors.deepPurpleAccent),
      subtitle1: TextStyle(color: Colors.pinkAccent), 
    ),*/

    // AppBar Theme
    /* appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
 */
    /* textTheme: TextTheme(),
      // TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      // FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 3, 204, 194),
            shape: const StadiumBorder(),
            elevation: 0),
      ), */

    /* enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))), */
  );
}
