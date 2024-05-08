import 'package:flexfit/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/auth/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
