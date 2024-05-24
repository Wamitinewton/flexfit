import 'dart:collection';

import 'package:flexfit/constants.dart';
import 'package:flexfit/src/presentation/about/about_app.dart';
import 'package:flexfit/src/presentation/analysis/analysis.dart';
import 'package:flexfit/src/presentation/auth/login_screen.dart';
import 'package:flexfit/src/presentation/history/history.dart';
import 'package:flexfit/src/presentation/maps/map_view.dart';
import 'package:flexfit/src/presentation/nutrition/nutrition_recommendation.dart';
import 'package:flexfit/src/presentation/profile/edit_profile.dart';
import 'package:flexfit/src/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridBuilderScreen extends StatefulWidget {
  const GridBuilderScreen({super.key});

  @override
  State<GridBuilderScreen> createState() => _GridBuilderScreenState();
}

class _GridBuilderScreenState extends State<GridBuilderScreen> {

  int _selectedIndex = 0;
  static final List<Widget> _screens = [
    const EditProfilescreen(),
    const MapViewScreen(),
    const NutritionRecommendation(),
    const AnalysisPage(),
    const AboutApplication(),
    const LoginScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: _screens.length,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              if (index == 5) {
                Get.offAllNamed(AppRoutes.login);
              } else if (index <= 4) {
                Get.offAll(_screens[_selectedIndex]);
              }

              print('new index is $index');
            },
            child: Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.all(9.5),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: kLynxWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                children: [
                 
                ],
              ),
            ),
          );
        });
  }
}

class GridViewDetails {
  String? title;
  Icon? assetImage;

  GridViewDetails({this.assetImage, this.title});
}
