import 'package:e_commerce_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:e_commerce_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:e_commerce_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  void emitSignUpStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(SignUPRequestBody(
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: passwordConfirmController.text));
    response.when(success: (signResponse) {
      emit(SignUpState.success((signResponse)));
    }, failure: (error) {
      emit(SignUpState.error(error: error.apiErrorModel.message ?? ' '));
    });
  }
}
