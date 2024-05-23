import 'dart:io';

import 'package:flexfit/src/bindings.dart';
import 'package:flexfit/src/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class MyHttpOverrides extends HttpOverrides {
  // this method is to override all certificate validations when using a mock api
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      initialBinding: AppBindings(),
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
    );
  }
}
