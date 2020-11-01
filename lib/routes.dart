import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_ecommerce_ui/screens/login_success_screen/login_success_screen.dart';
import 'package:flutter_ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:flutter_ecommerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_ecommerce_ui/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_ecommerce_ui/screens/forgot_password/forgot_password_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => SplashScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};
