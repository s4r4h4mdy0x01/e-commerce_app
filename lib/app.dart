
import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/helpers/shared_pref_helper.dart';
import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/features/home/ui/screens/home_screen.dart';
import 'package:e_commerce_app/features/login/logic/cubit/login_cubit.dart';
import 'package:e_commerce_app/features/onboarding/onboarding_screen.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //   title: 'Flutter Demo',
        theme: ThemeData(

            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: true,
            ),
        onGenerateRoute: AppRouter.onGenerate,
        initialRoute: 
        isLoggedInUser
            ? RoutesString.homeScreen
            : RoutesString.onboardingScreen,
      ),
    );
  }
}
