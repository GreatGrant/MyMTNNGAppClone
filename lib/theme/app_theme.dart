import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData buildDarkAppTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    primaryColor: AppColors.yellow700,
    scaffoldBackgroundColor: AppColors.darkBackground,
    cardColor: AppColors.darkCard,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.yellow700,
      selectionColor: AppColors.yellow200,
      selectionHandleColor: AppColors.yellow700,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      elevation: 0,
      titleTextStyle: TextStyle(color: AppColors.darkText, fontSize: 18, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: AppColors.darkIcon),
    ),
    textTheme: TextTheme(
      titleLarge: const TextStyle(color: AppColors.darkText, fontSize: 20, fontWeight: FontWeight.bold),
      bodyLarge: const TextStyle(color: AppColors.darkText, fontSize: 16),
      bodyMedium: TextStyle(color: AppColors.darkBodyMedium, fontSize: 14),
      labelLarge: const TextStyle(color: AppColors.lightText, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.lightText,
        backgroundColor: AppColors.yellow700,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.yellow700),
    ),
    cardTheme: CardTheme(
      color: AppColors.darkCard,
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.bottomBarDark,
      selectedItemColor: AppColors.yellow700,
      unselectedItemColor: AppColors.unselectedDark,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.yellow700,
      unselectedLabelColor: AppColors.unselectedDark,
      indicator: UnderlineTabIndicator(borderSide: BorderSide(color: AppColors.yellow700, width: 2)),
    ),
    iconTheme: const IconThemeData(color: AppColors.darkIcon),
  );
}

ThemeData buildLightAppTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: AppColors.yellow700,
    scaffoldBackgroundColor: AppColors.lightBackground,
    cardColor: AppColors.lightCard,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.yellow700,
      selectionColor: AppColors.yellow200,
      selectionHandleColor: AppColors.yellow700,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightBackground,
      elevation: 0,
      titleTextStyle: TextStyle(color: AppColors.lightText, fontSize: 18, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: AppColors.lightIcon),
    ),
    textTheme: TextTheme(
      titleLarge: const TextStyle(color: AppColors.lightText, fontSize: 20, fontWeight: FontWeight.bold),
      bodyLarge: const TextStyle(color: AppColors.lightText, fontSize: 16),
      bodyMedium: TextStyle(color: AppColors.lightBodyMedium, fontSize: 14),
      labelLarge: const TextStyle(color: AppColors.darkText, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.darkText,
        backgroundColor: AppColors.yellow700,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.yellow700),
    ),
    cardTheme: CardTheme(
      color: AppColors.lightCard,
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.bottomBarLight,
      selectedItemColor: AppColors.yellow700,
      unselectedItemColor: AppColors.unselectedLight,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.yellow700,
      unselectedLabelColor: AppColors.unselectedLight,
      indicator: UnderlineTabIndicator(borderSide: BorderSide(color: AppColors.yellow700, width: 2)),
    ),
    iconTheme: const IconThemeData(color: AppColors.lightIcon),
  );
}
