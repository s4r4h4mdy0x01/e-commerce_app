import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:e_commerce_app/core/widgets/app_text_button.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:e_commerce_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscure = true;

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
                    const AppTextFormField(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    verticalSpace(8),
                    const AppTextFormField(
                      hintText: 'UserName',
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
                    verticalSpace(8),
                    AppTextFormField(
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
