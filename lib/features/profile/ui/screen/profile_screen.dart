import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/features/profile/logic/cubit/profile_user_state.dart';
import 'package:e_commerce_app/features/profile/ui/widgets/info_user.dart';
import 'package:e_commerce_app/features/profile/ui/widgets/profile_user.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/string.dart';
import '../../../../core/widgets/app_top_bar.dart';
import '../../logic/cubit/profile_user_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(body: BlocBuilder<ProfileUserCubit, ProfileUserState>(
      builder: (context, state) {
        if (state is Success) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AppTopBar(
                  text: StringManager.profile,
                ),
                verticalSpace(60),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: screenHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.lighttGrey,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                        ),
                      ),
                    ),
                    InfoUser(
                      email: state.profileUserMode.email ?? 'email@',
                      name:
                          '${state.profileUserMode.firstName ?? 'so'} ${state.profileUserMode.lastName ?? 'so'}',
                      imageUrl: state.profileUserMode.imageUrl ??
                          'https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png',
                    ),
                    Column(
                      children: [
                        verticalSpace(180),
                        ProfileUser(
                          title: 'Frist Name',
                          text: state.profileUserMode.firstName ?? 'Name',
                        ),
                        ProfileUser(
                          title: 'Last Name',
                          text: state.profileUserMode.lastName ?? 'Name',
                        ),
                        ProfileUser(
                          title: 'Bio',
                          text: state.profileUserMode.bio ?? '',
                        ),
                        ProfileUser(
                          title: 'phone Number',
                          text: state.profileUserMode.phoneNumber ?? '',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: ColorManager.primary,
            ),
          );
        }
      },
    ));
  }
}
