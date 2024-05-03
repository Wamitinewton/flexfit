import 'package:clippy_flutter/arc.dart';
import 'package:flexfit/views/splash/splash_screen.dart';
import 'package:flexfit/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // color: Colors.white,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/splash3.jpg'),
                      fit: BoxFit.cover)),
              height: height - height / 2,
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          Get.offAll(SplashScreen());
                        },
                        child: Container(
                          height: 33,
                          width: 33,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      )),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'FlexFit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: height / 17.4,
              child: Container(
                color: const Color.fromARGB(255, 77, 71, 71),
                padding: EdgeInsets.only(top: height / 8),
                height: height / 1.8,
                width: width,
                child: const Align(
                    alignment: Alignment.topCenter,
                    child: Column(children: [
                      LargeButton(
                          text: 'Register',
                          color: Colors.white,
                          ontap: null,
                          containerColor: Colors.black),
                      SizedBox(
                        height: 30,
                      ),
                      LargeButton(
                          text: 'Sign in',
                          color: Colors.black,
                          ontap: null,
                          containerColor: Colors.white)
                    ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
