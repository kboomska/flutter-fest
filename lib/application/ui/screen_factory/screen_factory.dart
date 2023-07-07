import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_fest/application/ui/screens/main_tabs/main_tabs_view_model.dart';
import 'package:flutter_fest/application/ui/screens/main_tabs/main_tabs_screen.dart';

class ScreenFactory {
  const ScreenFactory();

  Widget makeMainTabs() => ChangeNotifierProvider(
        create: (_) => MainTabsViewModel(),
        child: const MainTabsScreen(),
      );
}
