import 'package:flutter/material.dart';
import 'package:esm3ni/material/widgets/nav_bar.dart';

class WidgetTree extends StatelessWidget {
  final String appName;
  const WidgetTree({super.key, required this.appName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appName), centerTitle: true),
      body: Center(child: Text("Welcome to $appName")),
      bottomNavigationBar: NavBar(),
    );
  }
}
