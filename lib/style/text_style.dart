import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomTextStyle { heading, subHeading }

extension CustomTextStyleExtension on CustomTextStyle {
  TextStyle get style {
    switch (this) {
      case CustomTextStyle.heading:
        return GoogleFonts.notoSans(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        );

      case CustomTextStyle.subHeading:
        return GoogleFonts.notoSans(fontSize: 16);
    }
  }
}
