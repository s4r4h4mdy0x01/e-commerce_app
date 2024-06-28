import 'package:e_commerce_app/app.dart';
import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/helpers/extensions.dart';
import 'package:e_commerce_app/core/helpers/shared_pref_helper.dart';
import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool isLoggedInUser = false;
void main()async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupDependencyInjection();
   await ScreenUtil.ensureScreenSize();
    await checkIfLoggedInUser();
  runApp(EcommerceApp(
    appRouter: AppRouter(),
  ));
  FlutterNativeSplash.remove();
}

checkIfLoggedInUser() async {
  String? accessToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.accessToken);

  if (!accessToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
