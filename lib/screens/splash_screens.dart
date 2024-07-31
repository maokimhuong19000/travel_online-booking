import 'package:flutter/material.dart';
import 'onboardibg_screen.dart'; // Import the HomeScreen class

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  void _navigateToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 3)); // Delay for 2 seconds
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomeScreen()), // Navigate to HomeScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(
          'ROMDOUL',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w800,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
