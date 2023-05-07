import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../views/screens/explore/explore_screen.dart';
import '../../../views/screens/home/home_screen.dart';
import '../../../views/screens/notifications/notifications_screen.dart';
import '../../../views/screens/profile/profile_screen.dart';

import '../../res/app_assets.dart';
import '../../res/app_screens.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedIndex = 0;

  final GlobalKey<NavigatorState> _homeScreenKey = GlobalKey();
  final GlobalKey<NavigatorState> _exploreScreenKey = GlobalKey();
  final GlobalKey<NavigatorState> _notifyScreenKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileScreenKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            bottom: 60,
            top: 0,
            right: 0,
            left: 0,
            child: IndexedStack(
              index: selectedIndex,
              children: [
                Navigator(
                  key: _homeScreenKey,
                  onGenerateRoute: (settings) => MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                Navigator(
                  key: _exploreScreenKey,
                  onGenerateRoute: (settings) => MaterialPageRoute(
                    builder: (context) => const ExploreScreen(),
                  ),
                ),
                Navigator(
                  key: _notifyScreenKey,
                  onGenerateRoute: (settings) => MaterialPageRoute(
                    builder: (context) => const NotifyScreen(),
                  ),
                ),
                Navigator(
                  key: _profileScreenKey,
                  onGenerateRoute: (settings) => MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                ),
              ],
            ),
          ),
          navigationBottom(context),
        ],
      )),
    );
  }

  Positioned navigationBottom(BuildContext context) {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (() =>
                    setState(() => selectedIndex = BottomNavIndex.homeIndex)),
                icon: SvgPicture.asset(
                  selectedIndex == BottomNavIndex.homeIndex
                      ? AppAssetsManagement.homeSelectedIcon
                      : AppAssetsManagement.homeIcon,
                ),
              ),
              IconButton(
                onPressed: (() => setState(
                    () => selectedIndex = BottomNavIndex.exploreIndex)),
                icon: SvgPicture.asset(
                    selectedIndex == BottomNavIndex.exploreIndex
                        ? AppAssetsManagement.exploreSelectedIcon
                        : AppAssetsManagement.exploreIcon),
              ),
              IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppNamedRoutes.addPostScreen),
                icon: SvgPicture.asset(AppAssetsManagement.addPostIcon),
              ),
              IconButton(
                onPressed: (() =>
                    setState(() => selectedIndex = BottomNavIndex.notifyIndex)),
                icon: SvgPicture.asset(
                    selectedIndex == BottomNavIndex.notifyIndex
                        ? AppAssetsManagement.notificationsSelectedIcon
                        : AppAssetsManagement.notificationsIcon),
              ),
              IconButton(
                onPressed: (() => setState(
                    () => selectedIndex = BottomNavIndex.profileIndex)),
                icon: selectedIndex == BottomNavIndex.profileIndex
                    ? const Icon(Icons.supervised_user_circle_rounded)
                    : const Icon(Icons.data_usage_rounded),
              ),
            ],
          ),
        ));
  }
}

class BottomNavIndex {
  BottomNavIndex._();

  static const int homeIndex = 0;
  static const int exploreIndex = 1;
  static const int notifyIndex = 2;
  static const int profileIndex = 3;
}
