import 'package:e_commerce_app/core/helpers/extensions.dart';

import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: ColorManager.lighttGrey,
          radius: 20,
          child: IconButton(
            onPressed: () {
              context.pushNamed(RoutesString.settingScreen);
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ),
        const Spacer(),
        Text(
          'Home',
          style: TextStyles.font24BlackBold,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(RoutesString.profileScreen);
          },
          child: CircleAvatar(
            backgroundColor: ColorManager.lighttGrey,
            radius: 20,
            child: const Icon(
              Icons.person,
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
