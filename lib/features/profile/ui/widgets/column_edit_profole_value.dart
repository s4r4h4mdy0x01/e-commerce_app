import 'package:e_commerce_app/core/helpers/app_regex.dart';
import 'package:e_commerce_app/features/profile/logic/cubit/profile_user_cubit.dart';
import 'package:e_commerce_app/features/profile/ui/widgets/change_image.dart';
import 'package:e_commerce_app/features/profile/ui/widgets/edit_profile_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class ColumnEditProfoleValue extends StatelessWidget {
  const ColumnEditProfoleValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ProfileUserCubit>().formKey,
      child: Column(
        children: [
          //? todo
          const ChangeImage(
              text: 'Change Image ',
              imageUrl:
                  'https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png'),
          verticalSpace(30),

          EditProfileValue(
            appTextFormField: AppTextFormField(
              keyboardType: TextInputType.name,
              hintText: ' Frist name',
              controller: context.read<ProfileUserCubit>().fristNameController,
            ),
            text: 'FristName ',
          ),
          EditProfileValue(
            appTextFormField: AppTextFormField(
              keyboardType: TextInputType.name,
              hintText: 'Last Name',
              controller: context.read<ProfileUserCubit>().lastNameController,
            ),
            text: 'last Nane',
          ),
          EditProfileValue(
            appTextFormField: AppTextFormField(
              keyboardType: TextInputType.text,
              hintText: ' User Name',
              controller: context.read<ProfileUserCubit>().userNameController,
            ),
            text: 'UserName ',
          ),
          EditProfileValue(
            appTextFormField: AppTextFormField(
              keyboardType: TextInputType.text,
              hintText: 'boi',
              controller: context.read<ProfileUserCubit>().bioController,
            ),
            text: 'boi',
          ),

          EditProfileValue(
            appTextFormField: AppTextFormField(
              keyboardType: TextInputType.phone,
              hintText: 'phone',
              controller:
                  context.read<ProfileUserCubit>().phoneNumberController,
            ),
            text: 'PhoneNumber ',
          ),
        ],
      ),
    );
  }
}
