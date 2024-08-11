import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class ProductsCategoriesListView extends StatelessWidget {
  const ProductsCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorManager.lightPrimary,
                    child: Image.asset('assets/images/shoes_3.png')),
                verticalSpace(8),
                Text(
                  'Product $index',
                  style: TextStyles.font13DarkOrangeRegular,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
