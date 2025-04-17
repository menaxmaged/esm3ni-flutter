import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esm3ni/data/constants.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  // List of button texts
  final List<String> buttonTexts = [
    "الارقــام", // Numbers
    "الحروف", // Letters
    "الكلمات", // Words
    "الجمل", // Sentences
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Learning Home")),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png", height: 200, width: 250),
                const SizedBox(
                  height: 40,
                ), // Adds space between the logo and buttons
                // Using Wrap to loop over the buttons list
                Wrap(
                  spacing: 20, // Horizontal space between buttons
                  runSpacing: 20, // Vertical space between rows of buttons
                  alignment:
                      WrapAlignment.center, // Center the buttons horizontally
                  children:
                      buttonTexts.map((text) {
                        return _buildModernButton(
                          text: text,
                          onTap: () {
                            print("Navigating to $text");
                          },
                        );
                      }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Modern styled button widget with increased size and same width
  Widget _buildModernButton({
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          maxWidth:
              170, // Set maximum width for all buttons to ensure uniform size
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ), // Increased padding for larger buttons
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF00BFAE),
              Color(0xFF006F87),
            ], // Teal to Blue gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.inactiveGray.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: CupertinoColors.white,
              fontSize: 24, // Increased font size for a more prominent text
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Center align the text
          ),
        ),
      ),
    );
  }
}
