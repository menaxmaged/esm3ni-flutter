import 'package:flutter/cupertino.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png", height: 200, width: 250),
            const SizedBox(
              height: 40,
            ), // Adds space between the logo and buttons
          ],
        ),
      ),
    );
  }
}
