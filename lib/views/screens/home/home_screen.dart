import 'package:flutter/material.dart';
import 'package:instagram_clone/views/screens/home/home_pages/second_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Home'),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondHomeScreen(),
              ),
            ),
            child: const Text('Next Page'),
          ),
        ],
      ),
    );
  }
}
