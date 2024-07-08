import 'package:e_commerce_app/features/profile/data/repo/user_repo.dart';
import 'package:e_commerce_app/features/profile/logic/cubit/profile_user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileUserCubit extends Cubit<ProfileUserState> {
   TextEditingController fristNameController = TextEditingController();

    TextEditingController userNameController = TextEditingController();
     TextEditingController lastNameController = TextEditingController();
       TextEditingController bioController = TextEditingController();
         TextEditingController phoneNumberController = TextEditingController();
          final formKey = GlobalKey<FormState>();
  final ProfileUserRepo _profileUserRepo;
  ProfileUserCubit(this._profileUserRepo)
      : super(const ProfileUserState.initial());
  void fetchProfile() async {
    emit(const ProfileUserState.loading());
    final response = await _profileUserRepo.getProfileUser();
    response.when(success: (profileUserModee){
      emit(ProfileUserState.success(profileUserMode: profileUserModee));

    },failure: (error) {
      emit(ProfileUserState.error(error: error.apiErrorModel.message ?? ' '));
    });
  }
  
  Future  updateProfile()async {
     emit(const ProfileUserState.loadingUpdate());
      final response = await _profileUserRepo.updateProfile(userNameController.text, fristNameController.text, lastNameController.text, phoneNumberController.text, bioController.text,);
      response.when(success: (profileUserMode){
      emit(ProfileUserState.successUpdate(profileUserMode: profileUserMode),);

    },failure: (error) {
      emit(ProfileUserState.errorUpdste(error: error.apiErrorModel.message ?? ' '));
    });
   }
}