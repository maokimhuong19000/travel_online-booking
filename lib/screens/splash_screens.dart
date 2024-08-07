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
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) => const HomeScreen()), // Navigate to HomeScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(236, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  'ROMDOUL',
                  style: TextStyle(
                    color: Color.fromARGB(255, 42, 100, 44),
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ),
              Center(
                child: Image(
                  image: AssetImage(
                    'assets/logos/logo.png'
                    ),
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
