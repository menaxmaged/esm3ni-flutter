import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/logo.png")),
          Text("Hello World!"),
        ],
      ),
    );
  }
}
