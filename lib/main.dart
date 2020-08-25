import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/constants.dart';
import 'package:flutter_ecommerce_ui/routes.dart';
import 'package:flutter_ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Flutter Ecommerce Ui',
      theme: ThemeData(
        textTheme: GoogleFonts.muliTextTheme(textTheme).copyWith(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
