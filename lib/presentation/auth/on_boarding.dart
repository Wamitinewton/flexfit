import 'package:clippy_flutter/arc.dart';
import 'package:flexfit/constants.dart';
import 'package:flexfit/presentation/auth/login_screen.dart';

import 'package:flexfit/common/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
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
                      image: AssetImage('assets/images/splash2.jpg'),
                      fit: BoxFit.cover)),
              height: height - height / 2,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: height / 17.3,
              child: Container(
                color: const Color.fromARGB(255, 77, 71, 71),
                padding: EdgeInsets.only(top: height / 8),
                height: height / 1.8,
                width: width,
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(children: [
                      const Text(
                        'Trusted friends',
                        style: kMerriweatherBold24
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                       Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis libero eget odio eleifend, eu ultricies felis consequat. Vivamus nec justo nisi. Sed eu turpis vitae nulla consectetur feugiat. Nullam dictum nunc eget nulla varius, eget rutrum ex ullamcorper',
                          style: kNunitoSansSemiBold16NorgheiSilver.copyWith(
                            fontSize: 15

                          )
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      LargeButton(
                          text: 'Continue',
                          color: const Color.fromARGB(255, 184, 177, 177),
                          ontap: () {
                           Get.offAll(LoginScreen());
                          },
                          containerColor: Colors.black)
                    ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
