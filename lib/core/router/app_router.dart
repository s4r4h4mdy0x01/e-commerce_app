import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/router/routes.dart';
import 'package:e_commerce_app/features/home/ui/screens/home_screen.dart';
import 'package:e_commerce_app/features/login/logic/cubit/login_cubit.dart';
import 'package:e_commerce_app/features/login/ui/screens/login_screen.dart';
import 'package:e_commerce_app/features/onboarding/onboarding_screen.dart';
import 'package:e_commerce_app/features/profile/ui/screen/profile_screen.dart';
import 'package:e_commerce_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:e_commerce_app/features/sign_up/ui/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesString.onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      case RoutesString.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case RoutesString.profileScreen:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
      case RoutesString.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case RoutesString.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('noRouteFound'),
        ),
        body: const Center(child: Text('noRouteFound')),
      ),
    );
  }
}
