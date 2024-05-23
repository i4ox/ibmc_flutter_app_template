
import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/uikit/text/app_text_style.dart';

/// Text style scheme for app
class AppTextScheme extends ThemeExtension<AppTextScheme> {
  /// Text style with a size of 45/52.
  /// Use for short, important text or numerals.
  final TextStyle headline;

  /// Text style with a size of 28/36.
  /// Use for marking primary passages of text or important regions of content.
  final TextStyle text;

  /// Text style with a size of 12/16.
  /// Use for things like the text inside components or for very small text in the content body.
  final TextStyle label;

  const AppTextScheme._({
    required this.headline,
    required this.text,
    required this.label,
  });

  /// Base text scheme
  AppTextScheme.base()
      : headline = AppTextStyle.baseHeadline.value,
        text = AppTextStyle.baseText.value,
        label = AppTextStyle.baseLabel.value;

  @override
  ThemeExtension<AppTextScheme> copyWith({
    TextStyle? headline,
    TextStyle? text,
    TextStyle? label,
  }) {
    return AppTextScheme._(
      headline: headline ?? this.headline,
      text: text ?? this.text,
      label: label ?? this.label,
    );
  }

  @override
  ThemeExtension<AppTextScheme> lerp(covariant ThemeExtension<AppTextScheme>? other, double t) {
    if (other is! AppTextScheme) {
      return this;
    }

    return AppTextScheme._(
      headline: TextStyle.lerp(headline, other.headline, t)!,
      text: TextStyle.lerp(text, other.text, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
    );
  }

  /// Return text theme for app from context.
  static AppTextScheme of(BuildContext context) {
    return Theme.of(context).extension<AppTextScheme>() ?? _throwThemeExceptionFromFunc(context);
  }
}

Never _throwThemeExceptionFromFunc(BuildContext context) => throw Exception('$AppTextScheme not found in $context');