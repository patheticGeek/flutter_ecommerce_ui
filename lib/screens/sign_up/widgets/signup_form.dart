import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/constants.dart';
import 'package:flutter_ecommerce_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_ecommerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_ecommerce_ui/screens/login_success_screen/login_success_screen.dart';
import 'package:flutter_ecommerce_ui/widgets/custom_suffix_icon.dart';
import 'package:flutter_ecommerce_ui/widgets/default_button.dart';
import 'package:flutter_ecommerce_ui/widgets/form_error.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();

  String email;
  String password;
  String reenterPassword;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      onSaved: (newVal) => email = newVal,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      onSaved: (newVal) => password = newVal,
      onChanged: (value) {
        password = value;
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildReenterPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-nter your password',
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      onSaved: (newVal) => reenterPassword = newVal,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value != password) {
          print(password);
          print(value);
          addError(error: 'Passwords are not same');
          return "";
        }
        return null;
      },
    );
  }

  void submitForm() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Navigator.pushNamed(context, CompleteProfileScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 20),
          buildPasswordFormField(),
          SizedBox(height: 20),
          buildReenterPasswordFormField(),
          SizedBox(height: 20),
          FormError(errors: errors),
          SizedBox(height: 16),
          DefaultButton(
            onPressed: submitForm,
            text: "Continue",
          ),
        ],
      ),
    );
  }
}
