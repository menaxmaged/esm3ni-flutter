import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.info), label: "Infos"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        print("Selected tab: $index");
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
