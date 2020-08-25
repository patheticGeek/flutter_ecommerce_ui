import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/size_config.dart';
import 'package:flutter_ecommerce_ui/screens/splash/widgets/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
