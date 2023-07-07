import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_fest/application/ui/screens/main_tabs/main_tabs_view_model.dart';
import 'package:flutter_fest/resources/resources.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: _BottomNavigationBarHandler(),
    );
  }
}

class _BottomNavigationBarHandler extends StatelessWidget {
  const _BottomNavigationBarHandler({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.read<MainTabsViewModel>();
    final currentIndex = context.select(
      (MainTabsViewModel model) => model.currentTabIndex,
    );

    return SizedBox(
      height: 83,
      child: Align(
        alignment: Alignment.topCenter,
        child: BottomNavigationBar(
          iconSize: 24,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: model.setCurrentTabIndex,
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
        ),
      ),
    );
  }
}
