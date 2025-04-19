import 'package:flutter/cupertino.dart';
import 'package:esm3ni/app.dart'; // Ensure the correct path for your MainScreen import

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to MainScreen after a delay of 3 seconds
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => const MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding for the screen
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png", height: 200, width: 250),
                const SizedBox(
                  height: 40,
                ), // Adds space between the logo and other elements
                CupertinoActivityIndicator(), // Shows a loading indicator while waiting
              ],
            ),
          ),
        ),
      ),
    );
  }
}
