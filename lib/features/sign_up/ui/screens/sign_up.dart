import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:e_commerce_app/core/widgets/app_text_button.dart';
import 'package:e_commerce_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:e_commerce_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:e_commerce_app/features/sign_up/ui/widgets/email_and_password_confirm_password.dart';
import 'package:e_commerce_app/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    const EmailAndPasswordAndConfirmPassword(),
                    AppTextButton(
                      buttonText: 'Create Account',
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateSignUp(context);
                      },
                    ),
                    verticalSpace(10),
                    //? todo
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () async {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font16orangRegular,
                        ),
                      ),
                    ),
                    verticalSpace(70),
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: const AlreadyHaveAccount(),
                    ),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
