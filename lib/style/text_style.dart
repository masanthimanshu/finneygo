import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomTextStyle {
  largeText,
  mediumText,
  boldLargeText,
  greyLargeText,
  extraLargeText,
  greyMediumText,
  greyLargeBoldText,
  greyExtraSmallText,
  whiteLargeBoldText,
  whiteBoldMediumText,
}

extension CustomTextStyleExtension on CustomTextStyle {
  TextStyle get style {
    switch (this) {
      case CustomTextStyle.largeText:
        return GoogleFonts.notoSans(fontSize: 16);

      case CustomTextStyle.mediumText:
        return GoogleFonts.notoSans(fontSize: 14);

      case CustomTextStyle.boldLargeText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        );

      case CustomTextStyle.greyLargeText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          color: Colors.black.withOpacity(0.25),
        );

      case CustomTextStyle.extraLargeText:
        return GoogleFonts.notoSans(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        );

      case CustomTextStyle.greyLargeBoldText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.whiteLargeBoldText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        );

      case CustomTextStyle.greyExtraSmallText:
        return GoogleFonts.notoSans(
          fontSize: 12,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.greyMediumText:
        return GoogleFonts.notoSans(
          fontSize: 14,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.whiteBoldMediumText:
        return GoogleFonts.notoSans(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        );
    }
  }
}
