import 'package:flutter/material.dart';
import 'package:my_mtn_app_clone/screens/help_screen.dart';
import 'package:my_mtn_app_clone/screens/home_screen.dart';
import 'package:my_mtn_app_clone/screens/more_screen.dart';
import 'package:my_mtn_app_clone/screens/play_screen.dart';
import 'package:my_mtn_app_clone/theme/app_theme.dart';
import 'package:my_mtn_app_clone/widgets/custom_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: buildLightAppTheme(),
      darkTheme: buildDarkAppTheme(),
      themeMode: ThemeMode.system,
    );
  }
}