
import 'package:e_commerce_app/features/profile/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part  'profile_user_state.freezed.dart';

 @freezed
class ProfileUserState with _$ProfileUserState {
  const factory ProfileUserState.initial() = _Initial;
    const factory ProfileUserState.loading() = Loading;
     const factory ProfileUserState.success({required ProfileUserModel profileUserMode}) = Success;
      const factory ProfileUserState.error({required String error}) = Error;
        const factory ProfileUserState.loadingUpdate() = LoadingUpdate;
         const factory ProfileUserState.successUpdate({required ProfileUserModel profileUserMode}) = SuccessUpdate;
        const factory ProfileUserState.errorUpdste({required String error}) = ErrorUpdate;
}