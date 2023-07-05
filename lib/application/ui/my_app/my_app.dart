import 'package:flutter/material.dart';

import 'package:flutter_fest/application/ui/navigation/main_navigation.dart';
import 'package:flutter_fest/application/ui/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = const MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fest',
      theme: AppTheme.ligth,
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
