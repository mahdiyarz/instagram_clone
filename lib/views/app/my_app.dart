import 'package:flutter/material.dart';

import '../main/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Instagram Clone',
      home: MainScreen(),
    );
  }
}
