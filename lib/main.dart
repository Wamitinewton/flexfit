import 'package:flexfit/src/controllers/auth_controller.dart';
import 'package:flexfit/src/data/data_sources.dart';
import 'package:flexfit/src/data/repository_impl.dart';
import 'package:flexfit/src/domain/use_cases.dart';
import 'package:flexfit/src/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void main() {
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
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
