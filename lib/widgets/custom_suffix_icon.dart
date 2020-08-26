import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String svgIcon;

  const CustomSuffixIcon({Key key, @required this.svgIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final margin = getProportionateScreenWidth(20);

    return Padding(
      padding: EdgeInsets.only(
        right: margin,
        top: margin,
        bottom: margin,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
