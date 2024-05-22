import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flexfit/src/presentation/auth/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
    startSplashScreen();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10); // Set the duration of the splash screen
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(), // Replace this with your onboarding screen widget
        ),
      );
    });
  }

  void startTimer() {
    const oneSec = const Duration(milliseconds: 500);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          currentPage = (currentPage + 1) % 3; // Assuming there are 3 dots
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Use Lottie widget to display animation
            Lottie.asset(
              'assets/lottie/splash_loading_animation.json',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Loading...',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            DotsIndicator(
              dotsCount: 3,
              position: currentPage,
              decorator: const DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}