import 'package:esm3ni/cupertino/widgets/nav_bar.dart';
import 'package:flutter/cupertino.dart';

class Esm3niCupertino extends StatelessWidget {
  final String appName;

  const Esm3niCupertino({super.key, required this.appName});
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: Color(0xFF007AFF),
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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar.large(
        largeTitle: Text(widget.appName),
      ),

      child: CupertinoTabScaffold(
        tabBar: 
        CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.info_circle),
              label: "Info",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: "person",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.info_circle),
              label: "Info",
            ),
          ],
          activeColor: CupertinoColors.systemRed,
          inactiveColor: CupertinoColors.systemGrey,
          currentIndex: currentIndex,
          onTap: (int index) {
            print("Selected tab: $index");
            setState(() {
              currentIndex = index;
              print("currentIndex: $currentIndex");
            });

            // Handle tab change
          },
        ),
        tabBuilder: (context, index) {
          return CupertinoPageScaffold(
            child: Center(child: Text("Tab zbi $index")),
          );
        },
      ),
    );
  }
}
