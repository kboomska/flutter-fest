import 'package:flutter/material.dart';

abstract class Screens {
  static const main = '/';
}

class MainNavigation {
  const MainNavigation();

  Map<String, Widget Function(BuildContext)> get routes =>
      <String, Widget Function(BuildContext)>{
        Screens.main: (context) => const Text('main'),
      };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }
}
