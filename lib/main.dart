import 'package:e_commerce_app/app.dart';
import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:flutter/material.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupDependencyInjection();
  runApp(EcommerceApp(
    appRouter: AppRouter(),
  ));
  FlutterNativeSplash.remove();
}
