import 'package:e_commerce_app/core/string.dart';
import 'package:e_commerce_app/core/theming/color.dart';
import 'package:e_commerce_app/features/profile/data/models/user_model.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/info_user.dart';
import 'package:e_commerce_app/features/profile/ui/screen/widgets/profile_user.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_top_bar.dart';


class ProfileView extends StatelessWidget {
  final ProfileUserModel profileUserModel;

  const ProfileView({required this.profileUserModel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(profileUserModel.imageUrl ??
                  'https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png',),
          Text(profileUserModel.firstName??'b0sy'),
          Text(profileUserModel.lastName??"love"),
          Text(profileUserModel.email??'sa@'),
          Text(profileUserModel.phoneNumber??'010'),
          Text(profileUserModel.bio??'l'),
        
        ],
      ),
    );
  }
}