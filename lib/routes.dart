import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:flutter_ecommerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_ecommerce_ui/screens/forgot_password/forgot_password_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => SplashScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
