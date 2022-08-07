import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.blueAccent[100],
    cardColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: Colors.black87),
    textTheme: TextTheme(
      /// app bar title
      caption: GoogleFonts.mulish(
        color: Colors.black,
        fontSize: 16,
      ),

      /// main screen title
      headline1: GoogleFonts.mulish(
        color: Colors.black,
        fontSize: 38,
        fontWeight: FontWeight.w900,
      ),

      /// cards crypto title
      headline2: GoogleFonts.mulish(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),

      /// cards price title
      headline3: GoogleFonts.mulish(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),

      /// list item title
      headline4: GoogleFonts.mulish(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),

      /// list item sub-title
      headline5: GoogleFonts.mulish(
        color: Colors.black45,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),

      /// list item percent increased
      subtitle1: GoogleFonts.mulish(
        color: Colors.greenAccent,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),

      /// list item percent decreased
      subtitle2: GoogleFonts.mulish(
        color: Colors.redAccent,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),

      button: GoogleFonts.mulish(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),

      bodyText1: GoogleFonts.mulish(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.w900,
      ),

      bodyText2: GoogleFonts.mulish(
        color: Colors.black45,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.grey.shade200,
      primaryVariant: Colors.grey.shade300,
      secondary: Colors.grey.shade100,
    ),
  );

  static final ThemeData dark = ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.blueAccent[100],
    cardColor: Colors.grey[800],
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.black,
    focusColor: Colors.white,
    textTheme: TextTheme(
      /// app bar title
      caption: GoogleFonts.mulish(
        color: Colors.white,
        fontSize: 18,
      ),

      /// main screen title
      headline1: GoogleFonts.mulish(
        color: Colors.white,
        fontSize: 44,
        fontWeight: FontWeight.w900,
      ),

      /// cards crypto title
      headline2: GoogleFonts.mulish(
        color: Colors.white54,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),

      /// cards price title
      headline3: GoogleFonts.mulish(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),

      /// list item title
      headline4: GoogleFonts.mulish(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),

      /// list item sub-title
      headline5: GoogleFonts.mulish(
        color: Colors.white54,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),

      /// list item percent increased
      subtitle1: GoogleFonts.mulish(
        color: Colors.greenAccent,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),

      /// list item percent decreased
      subtitle2: GoogleFonts.mulish(
        color: Colors.redAccent,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),

      bodyText1: GoogleFonts.mulish(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w900,
      ),

      bodyText2: GoogleFonts.mulish(
        color: Colors.white54,
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.white12,
      primaryVariant: Colors.white12,
      secondary: Colors.white24,
    ),
  );
}
