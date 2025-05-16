import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_dimensions.dart';

const kFontFamily = 'Manrope';

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
      titleTextStyle: TextStyle(
        color: AppColors.darkText,
        fontSize: AppDimensions.fontLarge,
        fontWeight: FontWeight.bold,
        fontFamily: kFontFamily,
      ),
      iconTheme: IconThemeData(color: AppColors.darkIcon),
    ),
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: AppColors.darkText,
        fontSize: AppDimensions.fontXLarge,
        fontWeight: FontWeight.bold,
        fontFamily: kFontFamily,
      ),
      headlineSmall: const TextStyle(
        fontSize: AppDimensions.fontLarge,
        fontWeight: FontWeight.normal,
        color: AppColors.darkText,
        fontFamily: kFontFamily,
      ),
      bodySmall: TextStyle(
        color: AppColors.darkBodyMedium,
        fontSize: AppDimensions.fontXSmall,
        fontFamily: kFontFamily,
      ),
      bodyLarge: const TextStyle(
        color: AppColors.darkText,
        fontSize: AppDimensions.fontBase,
        fontFamily: kFontFamily,
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkBodyMedium,
        fontSize: AppDimensions.fontSmall,
        fontFamily: kFontFamily,
      ),
      labelLarge: const TextStyle(
        color: AppColors.lightText,
        fontSize: AppDimensions.fontBase,
        fontWeight: FontWeight.bold,
        fontFamily: kFontFamily,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.lightText,
        backgroundColor: AppColors.yellow700,
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.paddingMedium,
          vertical: AppDimensions.paddingSmall,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.yellow700,
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.darkCard,
      elevation: AppDimensions.cardElevation,
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingMedium,
        vertical: AppDimensions.paddingSmall,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      ),
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
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: AppColors.yellow700,
          width: 2,
        ),
      ),
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
      titleTextStyle: TextStyle(
        color: AppColors.lightText,
        fontSize: AppDimensions.fontLarge,
        fontWeight: FontWeight.bold,
        fontFamily: kFontFamily,
      ),
      iconTheme: IconThemeData(color: AppColors.lightIcon),
    ),
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: AppColors.lightText,
        fontSize: AppDimensions.fontXLarge,
        fontWeight: FontWeight.bold,
        fontFamily: kFontFamily,
      ),
      bodyLarge: const TextStyle(
        color: AppColors.lightText,
        fontSize: AppDimensions.fontBase,
        fontFamily: kFontFamily,
      ),
      bodyMedium: TextStyle(
        color: AppColors.lightBodyMedium,
        fontSize: AppDimensions.fontSmall,
        fontFamily: kFontFamily,
      ),
      headlineSmall: const TextStyle(
        fontSize: AppDimensions.fontLarge,
        fontWeight: FontWeight.normal,
        color: AppColors.lightText,
        fontFamily: kFontFamily,
      ),
      labelLarge: const TextStyle(
        color: AppColors.darkText,
        fontSize: AppDimensions.fontBase,
        fontWeight: FontWeight.bold,
        fontFamily: kFontFamily,
      ),
      bodySmall: TextStyle(
        color: AppColors.darkBodyMedium,
        fontSize: AppDimensions.fontXSmall,
        fontFamily: kFontFamily,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.darkText,
        backgroundColor: AppColors.yellow700,
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.paddingMedium,
          vertical: AppDimensions.paddingSmall,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.yellow700,
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.lightCard,
      elevation: AppDimensions.cardElevation,
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingMedium,
        vertical: AppDimensions.paddingSmall,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      ),
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
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: AppColors.yellow700,
          width: 2,
        ),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.lightIcon),
  );
}
