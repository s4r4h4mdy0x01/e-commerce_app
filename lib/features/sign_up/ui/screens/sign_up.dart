import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:e_commerce_app/core/widgets/app_text_button.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:e_commerce_app/features/sign_up/ui/widgets/email_and_password_confirm_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(100),
                Text(
                  StringManager.signUp,
                  style: TextStyles.font24BlackBold,
                ),
                verticalSpace(20),
                Column(
                  children: [
         const          EmailAndPasswordAndConfirmPassword(),
                    AppTextButton(
                      buttonText: 'Sign Up',
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {},
                    ),
                    verticalSpace(10),
                    //? todo
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font116orangRegular,
                        ),
                      ),
                    ),
                    verticalSpace(70),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(RoutesString.loginScreen);
                      },
                      child: const AlreadyHaveAccount(),
                    ),
                    verticalSpace(70),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
