import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});
//  LoginScreen
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'Already have an account? ', style: TextStyles.font13Regular),
      TextSpan(text: ' Login', style: TextStyles.font13OrangSemiBold),
    ]));
  }
}
