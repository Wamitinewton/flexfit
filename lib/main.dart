import 'dart:io';

import 'package:flexfit/src/controllers/auth_controller.dart';
import 'package:flexfit/src/data/data_sources.dart';
import 'package:flexfit/src/data/repository_impl.dart';
import 'package:flexfit/src/domain/use_cases.dart';
import 'package:flexfit/src/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

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
  final client = http.Client();
  final remoteDataSource = AuthRemoteDataSource(client: client);
  final repository = AuthRepositoryImpl(remoteDataSource: remoteDataSource);

  Get.put(AuthController(
      signInUseCase: SignIn(repository), signUpUseCase: SignUp(repository)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
    );
  }
}
