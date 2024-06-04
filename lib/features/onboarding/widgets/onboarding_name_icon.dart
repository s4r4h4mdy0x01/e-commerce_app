import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingNameAndIcon extends StatelessWidget {
  const OnboardingNameAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.shopping_cart_rounded,
          size: 24.sp,
          color: ColorManager.primary,
        ),
        horizontalSpace(10),
        Text(
          StringManager.titleApp,
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
