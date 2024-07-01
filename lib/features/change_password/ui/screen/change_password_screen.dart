import 'package:e_commerce_app/core/helpers/app_regex.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:e_commerce_app/core/widgets/app_text_button.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/features/change_password/logic/cubit/change_password_cubit.dart';
import 'package:e_commerce_app/features/change_password/ui/widgets/change_password_bloc_istener.dart';
import 'package:e_commerce_app/features/change_password/ui/widgets/current_and_new_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(100),
                Text(
                  StringManager.changePassword,
                  style: TextStyles.font24BlackBold,
                ),
                verticalSpace(50),
                const CurrentAndNewPassword(),
                verticalSpace(38),
                AppTextButton(
                  buttonText: 'Change Password',
                  textStyle: TextStyles.font16WhiteMedium,
                  onPressed: () {
                    validateChangePassword(context);
                  },
                ),
                const ChangePasswordBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateChangePassword(BuildContext context) {
    if (context.read<ChangePasswordCubit>().formKey.currentState!.validate()) {
      context.read<ChangePasswordCubit>().emitChangePasswordState();
    }
  }
}
