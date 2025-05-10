import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/screens/home_screen.dart';
import 'package:my_mtn_app_clone/screens/play_screen.dart';

import '../widgets/custom_bottom_navbar.dart';
import 'help_screen.dart';
import 'more_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    PlayScreen(),
    HelpScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your app content
      body: _screens[_currentIndex],  // This shows the screen corresponding to the selected index

      // The custom bottom navigation bar
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,  // Use _currentIndex here
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.play_arrow, size: 30),
          Icon(Icons.help, size: 30),
          Icon(Icons.more_horiz, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;  // Update the selected index
          });
        },
        backgroundColor: Colors.transparent,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blueAccent,
        animationDuration: Duration(milliseconds: 300),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
