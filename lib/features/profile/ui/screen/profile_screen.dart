import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/container_icon_text.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/info_user.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/profile_top_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
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
                Column(
                  children: [
                    InfoUser(),
                    verticalSpace(30),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const ContainerIconText(
                              icon: EvaIcons.edit2,
                              title: 'Edit Profile',
                            ),
                            ContainerIconText(
                              icon: EvaIcons.heart,
                              color: ColorManager.rad,
                              title: 'Favorite',
                            ),
                            ContainerIconText(
                              onPressed: () {
                                context.pushNamed(
                                    RoutesString.changePasswordScreen);
                              },
                              icon: Icons.lock,
                              title: 'Change Password',
                            ),
                            ContainerIconText(
                              icon: Icons.logout,
                              title: 'Log Out ',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
