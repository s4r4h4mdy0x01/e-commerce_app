import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class OnboardingImageAndText extends StatelessWidget {
  const OnboardingImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  ColorManager.lighttGrey,
                  ColorManager.white.withOpacity(0.15),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.13, 0.4]),
          ),
          child: Image.asset(StringManager.imageOnboading),
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Text(
            StringManager.titleBestApp,
            textAlign: TextAlign.center,
            style: TextStyles.font32orangBold.copyWith(
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
}
