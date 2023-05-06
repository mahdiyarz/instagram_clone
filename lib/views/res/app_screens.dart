import 'package:flutter/material.dart';

import '../screens/add_post/add_post_screen.dart';
import '../screens/splash/splash_screen.dart';
import '../../views/screens/main/main_screen.dart';

abstract class AppNamedRoutes {
  static const splashScreen = '/splash-screen';
  static const mainScreen = '/main-screen';
  static const homeScreen = '/home-screen';
  static const exploreScreen = '/explore-screen';
  static const managementScreen = '/management-screen';
  static const profileScreen = '/profile-screen';
  static const addPostScreen = '/add-post-screen';
}

Map<String, Widget Function(BuildContext)> appRoutes = {
  AppNamedRoutes.splashScreen: (context) => const SplashScreen(),
  AppNamedRoutes.mainScreen: (context) => const MainScreen(),
  AppNamedRoutes.addPostScreen: (context) => const AddPostScreen(),
};
