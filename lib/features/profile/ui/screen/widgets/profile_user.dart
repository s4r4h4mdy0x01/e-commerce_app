import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:flutter/widgets.dart';

class ProfileUser extends StatelessWidget {
  final String title;
  final String text;
  const ProfileUser({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title),
        verticalSpace(20),
        Container(
            decoration: BoxDecoration(
                color: ColorManager.error,
                borderRadius: BorderRadius.circular(2)),
            child: Text(text))
      ],
    );
  }
}
