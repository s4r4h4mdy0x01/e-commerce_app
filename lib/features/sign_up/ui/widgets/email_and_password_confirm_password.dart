import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/password_validations.dart';
import 'package:e_commerce_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';

class EmailAndPasswordAndConfirmPassword extends StatefulWidget {
  const EmailAndPasswordAndConfirmPassword({super.key});

  @override
  State<EmailAndPasswordAndConfirmPassword> createState() =>
      _EmailAndPasswordAndConfirmPasswordState();
}

class _EmailAndPasswordAndConfirmPasswordState
    extends State<EmailAndPasswordAndConfirmPassword> {
  bool isObscure = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<SignUpCubit>().emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email ';
              }
            },
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(8),
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password ';
              }
            },
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
            controller: context.read<SignUpCubit>().passwordConfirmController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  context.read<SignUpCubit>().passwordConfirmController !=
                      context.read<SignUpCubit>().passwordController) {
                return 'Please enter a valid password ';
              }
            },
            hintText: 'Confirm Password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: isPasswordConfirmationObscureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              icon: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(12),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
