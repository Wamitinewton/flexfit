import 'package:flexfit/src/bindings.dart';
import 'package:flexfit/src/presentation/activity/current_activity.dart';
import 'package:flexfit/src/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      initialRoute: AppPages.initial,
      initialBinding: AppBindings(),

      // home:CurrentActivityScreen(),

      getPages: AppPages.routes,
    );
  }
}
