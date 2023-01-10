import 'package:flutter/material.dart';
import 'package:personal_portfolio/gen/fonts.gen.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get logo => const TextStyle(
        fontFamily: FontFamily.quicksand,
        color: Color(0xFF45405B),
        fontSize: 22,
        //22.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      );

  static TextStyle get menuItem => const TextStyle(
        fontFamily: FontFamily.quicksand,
        fontSize: 12, //12,.0
        letterSpacing: 1,
        color: Color(0xFF45405B),
      );

  static TextStyle get heading => const TextStyle(
        fontFamily: FontFamily.quicksand,
        color: Color(0xFF45405B),
        fontSize: 45,
        //45.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      );

  static TextStyle get subHeading => const TextStyle(
        color: Color(0xFF45405B),
        fontFamily: FontFamily.quicksand,
        fontSize: 17, //17.0
        letterSpacing: 1.2,
      );

  static TextStyle get company => const TextStyle(
        fontFamily: FontFamily.quicksand,
        color: Color(0xFF45405B),
        height: 1.5,
        fontSize: 15,
        //15.0
        letterSpacing: 1,
      );

  static TextStyle get body => const TextStyle(
        fontFamily: FontFamily.quicksand,
        color: Color(0xFF85819C),
        height: 1.5,
        fontSize: 12,
        //12.0
        letterSpacing: 1,
      );

  static TextStyle get body1 => const TextStyle(
        fontFamily: FontFamily.quicksand,
        color: Color(0xFF85819C),
        height: 1.5,
        fontSize: 10,
        //10.0
        letterSpacing: 1,
      );

  static TextStyle get chip => const TextStyle(
        fontFamily: FontFamily.quicksand,
        color: Color(0xFF85819C),
        fontSize: 12,
        //12.0
        letterSpacing: 1,
      );
}
