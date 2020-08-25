import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_ui/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => SplashScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
};
