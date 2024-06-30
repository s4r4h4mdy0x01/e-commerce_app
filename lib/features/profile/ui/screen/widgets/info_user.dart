import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/styles.dart';

class InfoUser extends StatelessWidget {
  const InfoUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -46,
      child: Column(
        children: [
          Center(
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/sara.jpeg'),
              radius: 64,
            ),
          ),
          verticalSpace(10),
          Text(
            "Sara Hamdy ",
            style: TextStyles.font24BlackRegular,
          ),
          verticalSpace(10),
          Text(
            "Sara@gmail.com",
            style: TextStyles.font16GrayRegular,
          ),
        ],
      ),
    );
  }
}
