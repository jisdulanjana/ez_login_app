import 'package:flutter/material.dart';

Color primary = const Color(0xFF6200EE);

class AppStyles {
  static Color primaryColor = primary;
  static Color primaryTextColor = const Color(0xFF060606);
  static Color secondaryTextColor = const Color(0xFFFFFFFF);
  static Color selectedTabBackground = const Color(0xFFEBEFF8);

  static TextStyle? headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: secondaryTextColor,
  );

  static TextStyle? bodyLarge = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700, color: primaryTextColor);

  static TextStyle? bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: primaryTextColor,
  );

  static TextStyle? bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: primaryTextColor,
  );

  static TextStyle? priceText = const TextStyle(
    color: Colors.green,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
