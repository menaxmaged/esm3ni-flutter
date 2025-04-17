import 'package:flutter/material.dart';
import 'package:esm3ni/material/views/pages/widget_tree.dart';

class Esm3niMaterial extends StatelessWidget {
  final String appName;
  const Esm3niMaterial({super.key, required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Cairo",
        brightness: Brightness.dark,
      ),
      home: HomeScreen(appName: appName),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final String appName;
  const HomeScreen({super.key, required this.appName});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WidgetTree(appName: widget.appName);
  }
}
