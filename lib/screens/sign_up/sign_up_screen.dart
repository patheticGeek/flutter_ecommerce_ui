import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/screens/sign_up/widgets/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
