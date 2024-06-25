import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/helpers/shared_pref_helper.dart';
import 'package:e_commerce_app/core/network/api_service.dart';
import 'package:e_commerce_app/core/network/dio.dart';
import 'package:e_commerce_app/features/login/data/repo/login_repo.dart';
import 'package:e_commerce_app/features/login/logic/cubit/login_cubit.dart';
import 'package:e_commerce_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:e_commerce_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
Future<void> setupDependencyInjection() async {
  final prefs = await SharedPreferences.getInstance();
  // dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerSingleton<SharedPreferences>(prefs);
  // in login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerSingleton<SharedPrefHelper>(
      SharedPrefHelper(getIt<LoginRepo>()));
  getIt.registerSingleton<LoginCubit>(
      LoginCubit(getIt<SharedPrefHelper>(), getIt<LoginRepo>()));

// in sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  // refreshToken
}
