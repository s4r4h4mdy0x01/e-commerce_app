import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/profile_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileTopBar(),
          verticalSpace(60),
          Container(
            decoration: BoxDecoration(
              color: ColorManager.lighttGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
