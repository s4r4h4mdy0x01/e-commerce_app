import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:e_commerce_app/features/onboarding/widgets/get_started_button.dart';
import 'package:e_commerce_app/features/onboarding/widgets/onboarding_image_text.dart';
import 'package:e_commerce_app/features/onboarding/widgets/onboarding_name_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/string.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                verticalSpace(15),
                const OnboardingNameAndIcon(),
                verticalSpace(60),
                const OnboardingImageAndText(),
                verticalSpace(100),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        StringManager.subTitleOnboading,
                        textAlign: TextAlign.center,
                        style: TextStyles.font13GrayRegular,
                      ),
                      verticalSpace(30),
                      const GetStartedButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
