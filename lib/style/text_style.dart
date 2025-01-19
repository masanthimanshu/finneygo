import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomTextStyle {
  smallText,
  largeText,
  mediumText,
  smallBoldText,
  smallGreyText,
  extraSmallText,
  extraLargeText,
  mediumBoldText,
  mediumGreyText,
  smallGreyBoldText,
  largeBoldGreyText,
  mediumBoldGreyText,
  extraLargeBoldText,
  extraSmallGreyText,
  whiteSmallBoldText,
  extraSmallGreyBoldText,
}

extension CustomTextStyleExtension on CustomTextStyle {
  TextStyle get style {
    switch (this) {
      case CustomTextStyle.extraSmallText:
        return GoogleFonts.notoSans(fontSize: 14);

      case CustomTextStyle.extraSmallGreyText:
        return GoogleFonts.notoSans(
          fontSize: 14,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.extraSmallGreyBoldText:
        return GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.smallText:
        return GoogleFonts.notoSans(fontSize: 16);

      case CustomTextStyle.smallBoldText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        );

      case CustomTextStyle.smallGreyText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.smallGreyBoldText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.whiteSmallBoldText:
        return GoogleFonts.notoSans(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        );

      case CustomTextStyle.mediumText:
        return GoogleFonts.notoSans(fontSize: 20);

      case CustomTextStyle.mediumBoldText:
        return GoogleFonts.notoSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        );

      case CustomTextStyle.mediumGreyText:
        return GoogleFonts.notoSans(
          fontSize: 20,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.mediumBoldGreyText:
        return GoogleFonts.notoSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.largeText:
        return GoogleFonts.notoSans(fontSize: 24);

      case CustomTextStyle.largeBoldGreyText:
        return GoogleFonts.notoSans(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.5),
        );

      case CustomTextStyle.extraLargeText:
        return GoogleFonts.notoSans(fontSize: 32);

      case CustomTextStyle.extraLargeBoldText:
        return GoogleFonts.notoSans(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        );
    }
  }
}
