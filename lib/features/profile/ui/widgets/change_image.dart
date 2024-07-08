import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class ChangeImage extends StatelessWidget {
  final String text;
 
  final String imageUrl;
  const ChangeImage(
      {super.key,
      required this.text,
     
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 64,
          ),
        ),
        verticalSpace(6),
        Center(
          child: Text(
            text,
            style: TextStyles.font13OrangRegular,
          ),
        ),
       
      ],
    );
  }
}
