import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/screens/sign_up/widgets/signup_form.dart';
import 'package:flutter_ecommerce_ui/size_config.dart';
import 'package:flutter_ecommerce_ui/widgets/social_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  "Register Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(28),
                  ),
                ),
                Text(
                  "Complete your details with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      onPressed: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      onPressed: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 12),
                BottomText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "By continuing you confirm that you agree\nwith our Terms and Condition",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
