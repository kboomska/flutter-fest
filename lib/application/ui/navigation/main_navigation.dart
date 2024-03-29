import 'package:flutter/material.dart';

import 'package:flutter_fest/application/ui/screen_factory/screen_factory.dart';

abstract class Screens {
  static const main = '/';
}

class MainNavigation {
  final _screenFactory = const ScreenFactory();

  const MainNavigation();

  Map<String, Widget Function(BuildContext)> get routes =>
      <String, Widget Function(BuildContext)>{
        Screens.main: (_) => _screenFactory.makeMainTabs(),
      };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }
}
