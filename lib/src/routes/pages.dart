import 'package:flexfit/src/presentation/application/application.dart';
import 'package:flexfit/src/presentation/auth/login_screen.dart';
import 'package:flexfit/src/presentation/auth/register_screen.dart';
import 'package:flexfit/src/presentation/profile/profile.dart';
import 'package:flexfit/src/presentation/splash/splash_screen.dart';
import 'package:flexfit/src/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/auth/on_boarding.dart';

class AppPages {
  static const initial = AppRoutes.initial;
  static const application = AppRoutes.application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];
  static final List<GetPage> routes = [
    GetPage(
        //  transitionDuration: Duration(seconds: 2),
        transition: Transition.circularReveal,
        name: AppRoutes.initial,
        page: () => SplashScreen()),
    GetPage(
        transitionDuration: Duration(milliseconds: 700),
        transition: Transition.cupertino,
        name: AppRoutes.login,
        page: () => const LoginScreen()),
    GetPage(
         transitionDuration: Duration(milliseconds: 700),
        transition: Transition.cupertino,
        name: AppRoutes.register,
        page: () => const RegisterScreen()),
    GetPage(
         transitionDuration: Duration(milliseconds: 700),
        transition: Transition.cupertino,
        name: AppRoutes.application,
        page: () => const ApplicationPage()),
    GetPage(
          transitionDuration: Duration(milliseconds: 700),
        transition: Transition.cupertino,
        name: AppRoutes.onBoarding,
        page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.profile, page: () => ProfileScreen())
  ];
}
