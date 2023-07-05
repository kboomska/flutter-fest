import 'package:flutter/material.dart';

import 'package:flutter_fest/application/ui/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fest',
      theme: AppTheme.ligth,
    );
  }
}
