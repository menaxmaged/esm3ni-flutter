import 'package:esm3ni/material/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class Esm3niMaterial extends StatelessWidget {
  final String appName;
  const Esm3niMaterial({super.key, required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Cairo"),
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
    return Scaffold(
      appBar: AppBar(title: Text(widget.appName), centerTitle: true),
      body: Center(child: Text("Welcome to ${widget.appName}")),
      bottomNavigationBar: NavBar(),
    );
  }
}
