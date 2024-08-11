import 'package:e_commerce_app/features/home/ui/widgets/home_orange_container.dart';
import 'package:e_commerce_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/features/home/ui/widgets/products_categories_list_view.dart';
import 'package:flutter/material.dart';

import '../widgets/product_categories_see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
              const HomeTopBar(),
              const HomeOrangeContainer(),
              verticalSpace(24),
              const ProductCategoriesSeeAll(),
               verticalSpace(18),
             const ProductsCategoriesListView(), 
              verticalSpace(8),
              // const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
