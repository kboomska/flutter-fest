import 'package:flutter/material.dart';

import 'package:flutter_fest/resources/resources.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 83,
        child: Align(
          alignment: Alignment.topCenter,
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 24,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(AppImages.calendar),
                  activeIcon: Image.asset(AppImages.calendarFull),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(AppImages.bookmark),
                  activeIcon: Image.asset(AppImages.bookmarkFull),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(AppImages.point),
                  activeIcon: Image.asset(AppImages.pointFull),
                  label: ''),
            ],
            onTap: (value) {},
          ),
        ),
      ),
    );
  }
}
