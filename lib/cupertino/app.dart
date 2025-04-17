import 'package:esm3ni/cupertino/views/pages/about.dart';
import 'package:esm3ni/cupertino/views/pages/home.dart';
import 'package:esm3ni/cupertino/views/pages/learn.dart';
import 'package:flutter/cupertino.dart';
import 'package:esm3ni/data/constants.dart';

class Esm3niCupertino extends StatelessWidget {
  const Esm3niCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: Color(0xFF007AFF),
        brightness: Brightness.dark,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  String barTitle = appName;
  final List<Widget> _tabs = [
    HomePage(),
    LearnPage(),
    AboutPage(),
  ]; // List of pages for each tab
  final List<String> _tabsTitles = [
    "Home",
    "Learn",
    "About",
  ]; // List of titles for each tab
  final List<IconData> _tabsIcons = [
    CupertinoIcons.home,
    CupertinoIcons.book,
    CupertinoIcons.info_circle,
  ]; // List of icons for each tab
  // List of tabs for the bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar.large(largeTitle: Text(barTitle)),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            for (int i = 0; i < _tabsTitles.length; i++)
              BottomNavigationBarItem(
                icon: Icon(_tabsIcons[i]),
                label: _tabsTitles[i],
              ),
          ],
          activeColor: CupertinoColors.systemBlue,
          inactiveColor: CupertinoColors.systemGrey,
          backgroundColor: CupertinoColors.transparent,
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
              barTitle =
                  _tabsTitles[index] == "Home"
                      ? appName
                      : _tabsTitles[index]; // Update the title based on the selected tab
              print("Selected tab: $index");
            });
          },
        ),
        tabBuilder: (context, index) {
          return _tabs[index]; // Display content for the selected tab
        },
      ),
    );
  }
}
