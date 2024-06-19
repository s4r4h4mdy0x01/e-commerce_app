import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class EemailAndPassword extends StatefulWidget {
  const EemailAndPassword({super.key});

  @override
  State<EemailAndPassword> createState() => _EemailAndPasswordState();
}

class _EemailAndPasswordState extends State<EemailAndPassword> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      
      child: Column(
        children: [
          const AppTextFormField(
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(8),
          AppTextFormField(
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
          verticalSpace(12),
        ],
      ),
    );
  }
}
