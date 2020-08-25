import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/constants.dart';

ThemeData loadTheme(context) {
  return ThemeData(
    appBarTheme: appBarTheme(),
    fontFamily: "Muli",
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0XFF888888),
        fontSize: 20,
      ),
    ),
  );
}
