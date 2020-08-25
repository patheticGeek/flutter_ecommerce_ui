import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/constants.dart';
import 'package:flutter_ecommerce_ui/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const DefaultButton({Key key, @required this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(58),
      child: FlatButton(
        onPressed: onPressed,
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
