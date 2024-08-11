import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class ProductCategoriesSeeAll extends StatelessWidget {
  const ProductCategoriesSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Categories',
          style: TextStyles.font18BlackSemiBold ,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font13OrangRegular,
        ),
      ],
    );
  }
}