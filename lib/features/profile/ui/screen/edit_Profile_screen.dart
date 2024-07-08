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
import '../widgets/edit_profile_value.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppTopBar(text: StringManager.editProfile),
                verticalSpace(screenHeight / 20),
                BlocConsumer<ProfileUserCubit, ProfileUserState>(
                  listener: (context, state) {
                    if (state is LoadingUpdate) {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return const Dialog(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircularProgressIndicator(),
                                    SizedBox(width: 20),
                                    Text("Loading..."),
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                    if (state is SuccessUpdate) {
                      showSuccessDialog(context);
                    }
                    if (state is ErrorUpdate) {
                      const SizedBox.shrink();
                    }
                  },
                  builder: (context, state) {
                    return Column(
                      children: [
                        const ColumnEditProfoleValue(),
                        verticalSpace(16),
                        AppTextButton(
                            buttonText: 'Save Changes',
                            textStyle: TextStyles.font16WhiteMedium,
                            onPressed: () async {
                              await context.read<ProfileUserCubit>()
                                .updateProfile();
                            }),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Update Profile Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have Update Profile  successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pop();
              },
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }
}
