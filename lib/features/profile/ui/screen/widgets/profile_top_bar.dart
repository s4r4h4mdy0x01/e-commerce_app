import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/color.dart';
import '../../../../../core/theming/styles.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                EvaIcons.arrowBack,
                color: Colors.black,
              ),
            ),
            horizontalSpace(30),
            Text('Profile', style: TextStyles.font24BlackBold)
          ],
        ),
      ),
    );
  }
}
