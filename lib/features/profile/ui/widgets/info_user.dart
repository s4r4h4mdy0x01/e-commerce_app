import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class InfoUser extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;
  const InfoUser(
      {super.key,
      required this.name,
      required this.email,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -60,
      child: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 64,
            ),
          ),
          verticalSpace(6),
          Text(
            name,
            style: TextStyles.font24BlackRegular,
          ),
          verticalSpace(5),
          Text(
            email,
            style: TextStyles.font16GrayRegular,
          ),
        ],
      ),
    );
  }
}
