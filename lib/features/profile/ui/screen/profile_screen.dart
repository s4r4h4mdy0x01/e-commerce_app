import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/features/profile/data/models/user_model.dart';
import 'package:e_commerce_app/features/profile/logic/cubit/profile_user_state.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/info_user.dart';


import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../../core/string.dart';

import '../../../../core/widgets/app_top_bar.dart';
import '../../logic/cubit/profile_user_cubit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileUserModel profileUserModel = ProfileUserModel();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProfileUserCubit>(context).fetchProfile();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<ProfileUserCubit, ProfileUserState>(
      builder: (context, state) {
        if (state is Success) {
          return Column(
            children: [
              AppTopBar(
                text: StringManager.profile,
              ),
              verticalSpace(60),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorManager.lighttGrey,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                        ),
                      ),
                    ),
                    InfoUser(
                      email: profileUserModel.email ?? 'email@',
                      name: profileUserModel.firstName ?? 'so',
                      imageUrl: profileUserModel.imageUrl ??
                          'https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png',
                    ),
                  ],
                ),
              ),
            ],
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
