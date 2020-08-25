import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/theme.dart';
import 'package:flutter_ecommerce_ui/routes.dart';
import 'package:flutter_ecommerce_ui/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ecommerce Ui',
      theme: loadTheme(context),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
