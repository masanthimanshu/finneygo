import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: GoogleFonts.notoSansTextTheme(),
  appBarTheme: AppBarTheme(
    elevation: 0,
    toolbarHeight: 80,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    titleTextStyle: GoogleFonts.notoSans(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.notoSans(fontSize: 16),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      backgroundColor: WidgetStatePropertyAll(Color(0xffFF5678)),
      textStyle: WidgetStatePropertyAll(GoogleFonts.notoSans(fontSize: 24)),
    ),
  ),
);
