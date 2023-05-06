import 'package:flutter/material.dart';

import '../res/app_screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      initialRoute: AppNamedRoutes.splashScreen,
      routes: appRoutes,
    );
  }
}
