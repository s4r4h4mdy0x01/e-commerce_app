import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailAndPasswordAndConfirmPassword extends StatefulWidget {
  const EmailAndPasswordAndConfirmPassword({super.key});

  @override
  State<EmailAndPasswordAndConfirmPassword> createState() =>
      _EmailAndPasswordAndConfirmPasswordState();
}

class _EmailAndPasswordAndConfirmPasswordState
    extends State<EmailAndPasswordAndConfirmPassword> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          validator: (p0) {},
          hintText: 'Email',
          keyboardType: TextInputType.emailAddress,
        ),
        verticalSpace(8),
        AppTextFormField(
          validator: (p0) {},
          hintText: 'Password',
          keyboardType: TextInputType.visiblePassword,
          obscureText: isObscure,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(8),
        AppTextFormField(
          validator: (p0) {},
          hintText: 'Confirm Password',
          keyboardType: TextInputType.visiblePassword,
          obscureText: isObscure,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(12),
      ],
    );
  }
}
