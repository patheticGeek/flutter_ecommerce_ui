import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/screens/complete_profile/widgets/complete_profile_form.dart';

import 'package:flutter_ecommerce_ui/size_config.dart';
import 'package:flutter_ecommerce_ui/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Complete Profile', style: headingStyle),
              Text(
                'Complete your details or continue\nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
