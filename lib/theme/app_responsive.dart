import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;
  late double screenWidth;
  late double screenHeight;

  Responsive(this.context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
  }

  // You can base scaling on width or height. Here's width-based scaling.
  double scale(double value) => (screenWidth / 375.0) * value;

  // Common shortcuts
  double get paddingSmall => scale(8);
  double get paddingMedium => scale(16);
  double get paddingLarge => scale(24);

  double get radiusSmall => scale(10);
  double get radiusMedium => scale(20);

  double get fontSmall => scale(14);
  double get fontBase => scale(16);
  double get fontLarge => scale(18);
  double get fontXLarge => scale(20);
}
