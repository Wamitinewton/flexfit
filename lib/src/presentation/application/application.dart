import 'package:flexfit/src/presentation/analysis/analysis.dart';
import 'package:flexfit/src/presentation/history/history.dart';
import 'package:flexfit/src/presentation/home/home_view.dart';
import 'package:flexfit/src/presentation/profile/profile.dart';
import 'package:flexfit/src/presentation/settings/settings.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/salomon_navbar.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePageScreen(),
    const HistoryPage(),
    const AnalysisPage(),
    const SettingsScreen(),
    const ProfileScreen(),
  ];

  // void onItemTapped(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _selectedIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Home'),
            // activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.history),
            title: const Text('History'),
            // activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.analytics),
            title: const Text(
              'Analysis',
            ),
            // activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Settings'),
            // activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
             BottomNavyBarItem(
            icon: const Icon(Icons.person_2),
            title: const Text('profile'),
            // activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      
    );
  }
}
