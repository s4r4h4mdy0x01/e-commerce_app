import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerIconText extends StatelessWidget {
  const ContainerIconText(
      {super.key,
      required this.icon,
      required this.title,
      this.onPressed,
      this.color});
  final IconData icon;
  final String title;
  final Color? color;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      margin: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.color3, width: 3.0),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            '   $title',
            style: TextStyles.font16RegularBlack,
          ),
          const Spacer(),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          )
        ],
      ),
    );
  }
}
