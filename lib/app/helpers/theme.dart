import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PLTheme {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color.fromRGBO(54, 13, 58, 1),
      ),
      fontFamily: GoogleFonts.notoSans().fontFamily,
    );
  }

  static ThemeData dark() {
    return ThemeData.dark();
  }
}
