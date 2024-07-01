import 'package:e_commerce_app/core/helpers/app_regex.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/features/change_password/logic/cubit/change_password_cubit.dart';
import 'package:e_commerce_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentAndNewPassword extends StatefulWidget {
  const CurrentAndNewPassword({super.key});

  @override
  State<CurrentAndNewPassword> createState() => _CurrentAndNewPasswordState();
}

class _CurrentAndNewPasswordState extends State<CurrentAndNewPassword> {
  bool isCurrentPasswordObscureText = true;
  bool isNewPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<ChangePasswordCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              controller:
                  context.read<ChangePasswordCubit>().currentPasswordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password ';
                }
              },
              hintText: ' Current Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: isCurrentPasswordObscureText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isCurrentPasswordObscureText =
                        !isCurrentPasswordObscureText;
                  });
                },
                icon: Icon(
                  isCurrentPasswordObscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
            ),
            verticalSpace(30),
            AppTextFormField(
              controller:
                  context.read<ChangePasswordCubit>().newPasswordController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return 'Please enter a valid  New password ';
                }
              },
              hintText: 'New Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: isNewPasswordObscureText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isNewPasswordObscureText = !isNewPasswordObscureText;
                  });
                },
                icon: Icon(
                  isNewPasswordObscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
            ),
            verticalSpace(30),
            AppTextFormField(
              controller: context
                  .read<ChangePasswordCubit>()
                  .newPasswordConfirmController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value) ||
                    value !=
                        context
                            .read<ChangePasswordCubit>()
                            .newPasswordController
                            .text) {
                  return 'Please enter a valid  New Confirm password ';
                }
              },
              hintText: 'New Confirm Password',
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
          ],
        ));
  }
}
