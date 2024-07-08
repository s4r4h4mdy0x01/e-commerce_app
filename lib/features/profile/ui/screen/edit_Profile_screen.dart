import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:e_commerce_app/core/theming/styles.dart';
import 'package:e_commerce_app/core/widgets/app_text_button.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/app_top_bar.dart';
import 'package:e_commerce_app/features/profile/logic/cubit/profile_user_cubit.dart';
import 'package:e_commerce_app/features/profile/logic/cubit/profile_user_state.dart';
import 'package:e_commerce_app/features/profile/ui/widgets/change_image.dart';
import 'package:e_commerce_app/features/profile/ui/widgets/column_edit_profole_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/string.dart';
import '../widgets/edit_profile_bloc_listener.dart';
import '../widgets/edit_profile_value.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: SingleChildScrollView(
              child: Column(
            children: [
              const ColumnEditProfoleValue(),
              verticalSpace(16),
              AppTextButton(
                  buttonText: 'Save Changes',
                  textStyle: TextStyles.font16WhiteMedium,
                  onPressed: () async {
                    await context.read<ProfileUserCubit>().updateProfile();
                     if (context.mounted) {
                    context.pop();
                  }
                  }),
              const EditProfileBlocListener()
            ],
          )),
        ),
      ),
    );
  }
}
