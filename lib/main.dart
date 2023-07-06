import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_fest/application/ui/my_app/my_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
  ));

  const app = MyApp();
  runApp(app);
}
