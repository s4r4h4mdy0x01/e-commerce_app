import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/widgets/app_top_bar.dart';
import 'package:e_commerce_app/features/setting/ui/widgets/container_icon_text.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/router/routes.dart';
import '../../../core/theming/color.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTopBar(text: StringManager.setting),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ContainerIconText(
                    icon: EvaIcons.edit2,
                    title: 'Edit Profile',
                    onPressed: (){
                       context.pushReplacementNamed(RoutesString.editProfileScreen);
                 
                    },
                  ),
                  ContainerIconText(
                    icon: EvaIcons.heart,
                    color: ColorManager.rad,
                    title: 'Favorite',
                  ),
                  ContainerIconText(
                    onPressed: () {
                      context.pushNamed(RoutesString.changePasswordScreen);
                    },
                    icon: Icons.lock,
                    title: 'Change Password',
                  ),
                  ContainerIconText(
                    icon: Icons.info,
                    //  color: ColorManager.rad,
                    title: 'About Us',
                  ),
                  ContainerIconText(
                    icon: Icons.logout,
                    title: 'Log Out ',
                    onPressed: () async {
                      context.pushReplacementNamed(RoutesString.loginScreen);
                      debugPrint(
                          'FlutterSecureStorage : all data has been cleared');
                      const flutterSecureStorage = FlutterSecureStorage();
                      await flutterSecureStorage.deleteAll();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
