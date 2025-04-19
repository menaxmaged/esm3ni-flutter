import 'package:esm3ni/core/utils/helper.dart';

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
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            for (int i = 0; i < _tabsTitles.length; i++)
              BottomNavigationBarItem(
                icon: Icon(_tabsIcons[i]),
                label: _tabsTitles[i],
              ),
          ],
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
