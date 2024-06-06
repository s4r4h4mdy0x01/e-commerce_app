import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});
//  LoginScreen
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: "Don't have an account", style: TextStyles.font13Regular),
      TextSpan(text: 'Sign Up', style: TextStyles.font13OrangSemiBold),
    ]));
  }
}
