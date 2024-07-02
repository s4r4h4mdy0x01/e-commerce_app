import 'package:freezed_annotation/freezed_annotation.dart';
part  'profile_user_state.freezed.dart';


@freezed
class ProfileUserState<T> with _$ProfileUserState<T> {
  const factory ProfileUserState.initial() = _Initial;
    const factory ProfileUserState.loading() = Loading;
      const factory ProfileUserState.success(T data) = Success<T>;
        const factory ProfileUserState.error({required String error}) = Error;
}
