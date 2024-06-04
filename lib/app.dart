import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
   designSize: const Size(375, 812) ,
      splitScreenMode : true,
 
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
     //   title: 'Flutter Demo',
        theme: ThemeData(

            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: true,
            ),
        onGenerateRoute: AppRouter.onGenerate,
        initialRoute: RoutesString.onboardingScreen,
      ),
    );
  }
}
