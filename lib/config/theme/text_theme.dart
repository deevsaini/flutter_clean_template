import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/dimensions.dart';

class CustomStyles {
  static final titleTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 10, fontWeight: FontWeight.w600),
  );
  static final smallTitleTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 7, fontWeight: FontWeight.w600),
  );

  static final fixAppBarTextStyle = GoogleFonts.prostoOne(
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  );

  static final headingTextStyle = GoogleFonts.prostoOne(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 13, fontWeight: FontWeight.w600),
  );

  static final largeHeadingTextStyle = GoogleFonts.prostoOne(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 25, fontWeight: FontWeight.w700),
  );
  static final bodyTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 8, fontWeight: FontWeight.w400),
  );
  static final mediumBodyTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 7, fontWeight: FontWeight.w500),
  );
  static final regularBodyTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 7, fontWeight: FontWeight.w400),
  );
  static final smallBodyTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 6, fontWeight: FontWeight.w500),
  );
  static final buttonTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 8, fontWeight: FontWeight.w600),
  );
  static final smallbuttonTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: Dimensions.height2 * 7, fontWeight: FontWeight.w500),
  );
}
