import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ligth = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    // useMaterial3: true,
    // appBarTheme: const AppBarTheme(
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.light,
    //     statusBarColor: Colors.red,
    //   ),
    // ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      // selectedItemColor: Color(0xFF00BD13),
      // unselectedItemColor: Color(0xFF52525E),
    ),
  );
}
