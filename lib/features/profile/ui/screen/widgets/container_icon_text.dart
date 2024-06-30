import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerIconText extends StatelessWidget {
  const ContainerIconText({super.key});

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
          BoxShadow(offset: )
          ]),
      child: Row(
        children: [
          Icon(EvaIcons.edit2),
          Text(
            '   Edit Profile',
            style: TextStyles.font16RegularBlack,
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: Icon(EvaIcons.arrowheadRight))
        ],
      ),
    );
  }
}
