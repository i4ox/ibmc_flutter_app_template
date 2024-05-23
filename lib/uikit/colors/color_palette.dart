import 'package:flutter/material.dart';

/// DON'T USE THIS DIRECTLY FOR UI ELEMENTS DECORATING.
/// USE COLOR SCHEME INSTEAD.
// TODO: Add documentation for exists colors

/// Application light colors palette
abstract class LightColorPalette {
  static const white = Color(0xFFFFFFFF);

  static const darkWhite = Color(0xFFE1E1E1);

  static const black = Color(0x212325);

  static const grey = Color(0xFF6C7278);

  static const blue = const Color(0xFF246BFD);

  static const red = const Color(0xFFFF968E);

  static const green = const Color(0xFF5DCD9B);
}

/// Application dark colors palette
abstract class DarkColorPalette {
  static const white = Color(0xFFFFFFFF);

  static const black = Color(0x212325);

  static const lightBlack = Color(0xFF3A3D46);

  static const grey = Color(0xFF6C7278);

  static const blue = const Color(0xFF246BFD);

  static const red = const Color(0xFFFF968E);

  static const green = const Color(0xFF5DCD9B);
}