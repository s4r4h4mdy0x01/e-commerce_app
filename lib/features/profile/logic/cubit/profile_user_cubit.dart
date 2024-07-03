import 'package:e_commerce_app/features/profile/data/repo/user_repo.dart';
import 'package:e_commerce_app/features/profile/logic/cubit/profile_user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileUserCubit extends Cubit<ProfileUserState> {
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
}