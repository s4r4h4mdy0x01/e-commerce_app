import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EditProfileValue extends StatelessWidget {
  final String text;

  final AppTextFormField appTextFormField;

  const EditProfileValue({
    super.key,
    required this.text,
 
  required this.appTextFormField,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyles.font18DarkOrangeRegular,
          maxLines: 2,
       
        ),
        verticalSpace(5),
     appTextFormField,
      ],
    );
  }
}
