import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/constants.dart';
import 'package:flutter_ecommerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_ecommerce_ui/screens/splash/widgets/splash_content.dart';
import 'package:flutter_ecommerce_ui/size_config.dart';
import 'package:flutter_ecommerce_ui/widgets/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (val) {
                  setState(() {
                    currentPage = val;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                    text: splashData[index]['text'],
                    image: splashData[index]['image'],
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(
                          index: index,
                          isLast: index == splashData.length - 1,
                        ),
                      ),
                    ),
                    Spacer(flex: 2),
                    DefaultButton(
                      text: 'Continue',
                      onPressed: () =>
                          Navigator.pushNamed(context, SignInScreen.routeName),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index, bool isLast}) {
    final bool isActive = currentPage == index;
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      width: isActive ? 20 : 6,
      margin: EdgeInsets.only(right: isLast ? 0 : 6),
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
