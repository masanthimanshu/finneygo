import 'package:flutter/material.dart';

enum ThemeColors {
  grey,
  lightGrey,
  mediumGrey,
  themeColor,
  liteThemeColor,
  mediumThemeColor,
}

extension CustomThemeColorsExtension on ThemeColors {
  Color get color {
    switch (this) {
      case ThemeColors.grey:
        return Colors.black.withOpacity(0.5);

      case ThemeColors.lightGrey:
        return Colors.black.withOpacity(0.05);

      case ThemeColors.mediumGrey:
        return Colors.black.withOpacity(0.25);

      case ThemeColors.themeColor:
        return Color(0xffFF5678);

      case ThemeColors.liteThemeColor:
        return Color(0xffFF5678).withOpacity(0.25);

      case ThemeColors.mediumThemeColor:
        return Color(0xffFF5678).withOpacity(0.5);
    }
  }
}

const List<Color> cardColors = [
  Color(0xffBFECFF),
  Color(0xffBFECFF),
  Color(0xffCDC1FF),
  Color(0xffCDC1FF),
  Color(0xffFFD2A0),
  Color(0xffFFD2A0),
  Color(0xffFFCCEA),
  Color(0xffFFCCEA),
];
