import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/container_icon_text.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/info_user.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../../core/string.dart';

import '../../../../core/widgets/app_top_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTopBar(
            text: StringManager.profile,
          ),
          verticalSpace(60),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorManager.lighttGrey,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                ),
                const InfoUser(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
