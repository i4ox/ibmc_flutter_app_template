import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/uikit/text/font_sizes.dart';

/// App text style
enum AppTextStyle {
  /// Base headline - use for big titles or etc
  baseHeadline(
    TextStyle(
      fontFamily: 'Inter',
      fontSize: double22,
      fontWeight: FontWeight.w500,
      height: 1.2,
    ),
  ),

  /// Base text - use for any text on screen
  baseText(
    TextStyle(
      fontFamily: 'Inter',
      fontSize: double16,
      fontWeight: FontWeight.w500,
      height: 1.2,
    ),
  ),

  /// Base label - use for labels on buttons, widgets and etc
  baseLabel(
    TextStyle(
      fontFamily: 'PlusJakartaSans',
      fontSize: double14,
      fontWeight: FontWeight.w600,
      height: 1.4,
    ),
  );

  /// Default value
  final TextStyle value;

  const AppTextStyle(this.value);
}
