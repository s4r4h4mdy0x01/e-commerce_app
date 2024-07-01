import 'package:e_commerce_app/features/change_password/data/model/change_password_reqest.dart';
import 'package:e_commerce_app/features/change_password/data/repo/change_password_repo.dart';
import 'package:e_commerce_app/features/change_password/logic/cubit/change_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final ChangePasswordRepo _changePasswordRepo;
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newPasswordConfirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  ChangePasswordCubit(this._changePasswordRepo)
      : super(const ChangePasswordState.initial());
  emitChangePasswordState() async {
    emit(const ChangePasswordState.loading());
    final response = await _changePasswordRepo.changePassword(
        ChangePasswordRequestBody(
            currentPassword: currentPasswordController.text,
            newPassword: newPasswordController.text,
            confirmNewPassword: newPasswordConfirmController.text));
    response.when(
      success: (changePasswordResponse) {
        emit(ChangePasswordState.success(changePasswordResponse));
      },
      failure: (errorHandler) {
        emit(ChangePasswordState.error(
            error: errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
