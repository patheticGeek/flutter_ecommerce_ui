import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: errors.map((String e) => formError(e)).toList(),
    );
  }

  Row formError(String error) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: 18,
          width: 18,
        ),
        SizedBox(width: 12),
        Text(error, style: TextStyle(color: Colors.red[300])),
      ],
    );
  }
}
