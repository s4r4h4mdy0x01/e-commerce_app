import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:e_commerce_app/core/widgets/app_text_button.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


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
                  StringManager.login,
                  style: TextStyles.font24BlackBold,
                ),
                verticalSpace(20),
                Column(
                  children: [
                   

                    verticalSpace(12),
                    AppTextButton(
                      buttonText: 'Login',
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
                        context.pushNamed(RoutesString.signUpScreen);
                      },
                      child: const DontHaveAnAccount(),
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
