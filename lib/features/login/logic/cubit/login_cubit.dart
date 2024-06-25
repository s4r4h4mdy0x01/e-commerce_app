import 'package:e_commerce_app/core/helpers/shared_pref_helper.dart';
import 'package:e_commerce_app/core/network/api_error_model.dart';
import 'package:e_commerce_app/features/access_token/access_token_requst.dart';

import 'package:e_commerce_app/features/login/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/login/data/models/login_response.dart';
import 'package:e_commerce_app/features/login/data/repo/login_repo.dart';
import 'package:e_commerce_app/features/refresh_token/refresh_token_request.dart';
import 'package:e_commerce_app/features/refresh_token/refresh_token_response.dart';
import 'package:e_commerce_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/features/login/logic/cubit/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  final SharedPrefHelper sharedPrefHelper;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginCubit(
    this.sharedPrefHelper,
    this._loginRepo,
  ) : super(const LoginState.initial());

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));
    response.when(success: (loginResponse) async {
      await sharedPrefHelper.saveTokens(loginResponse);
      await sharedPrefHelper.checkAndRefreshToken();
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ' '));
    });
  }

  // Access token is still valid, return it
}
