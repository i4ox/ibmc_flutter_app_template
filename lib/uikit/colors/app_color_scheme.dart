
import 'package:flutter/material.dart';
import 'package:ibmc_flutter_app_template/uikit/colors/color_palette.dart';

/// App brand color scheme
/// This extension is in sync with base [ThemeData] and [ColorScheme].
/// How to use:
/// ```dart
/// final colorScheme = AppColorScheme.of(context);
/// return Container(color: colorScheme.primary);
/// ```
@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  /// Can be used as an accent color for buttons, switches, labels, icons, etc.
  final Color primary;

  /// The color of the text on [primary]
  final Color onPrimary;

  /// Secondary branding color for the app
  final Color secondary;

  /// The color of the text on [secondary]
  final Color onSecondary;

  /// Can be used as an background color for cards, alerts, dialogs, bottom sheets, etc.
  final Color surface;

  /// Secondary surface color
  final Color surfaceSecondary;

  /// The color of the text on [surface] and [surfaceSecondary]
  final Color onSurface;

  /// Background color
  final Color background;

  /// Secondary background color
  final Color backgroundSecondary;

  /// The color of the text on [background] and [backgroundSecondary]
  final Color onBackground;

  /// Can be used as an accent color for text/background of an error message/destructive button.
  final Color danger;

  /// Secondary danger color
  final Color dangerSecondary;

  /// The color of the text on [danger] and [dangerSecondary]
  final Color onDanger;

  /// Can be used as an accent color for text/background with informational success messages.
  final Color positive;

  /// The color of the text on [positive]
  final Color onPositive;

  /// Color of inactive elements
  final Color inactive;

  /// Can be uses as an accent color of the loading effect
  final Color shimmer;

  /// Base light theme version.
  AppColorScheme.light()
      : primary = LightColorPalette.blue,
        onPrimary = LightColorPalette.white,
        secondary = LightColorPalette.green,
        onSecondary = LightColorPalette.white,
        surface = LightColorPalette.darkWhite,
        surfaceSecondary = LightColorPalette.white,
        onSurface = LightColorPalette.black,
        background = LightColorPalette.darkWhite,
        backgroundSecondary = LightColorPalette.white,
        onBackground = LightColorPalette.black,
        danger = LightColorPalette.red,
        dangerSecondary = LightColorPalette.red,
        onDanger = LightColorPalette.white,
        inactive = LightColorPalette.grey,
        positive = LightColorPalette.green,
        onPositive = LightColorPalette.white,
        shimmer = LightColorPalette.grey;

  /// Base dark theme version.
  AppColorScheme.dark()
      : primary = DarkColorPalette.blue,
        onPrimary = DarkColorPalette.white,
        secondary = DarkColorPalette.green,
        onSecondary = DarkColorPalette.white,
        surface = DarkColorPalette.black,
        surfaceSecondary = DarkColorPalette.lightBlack,
        onSurface = DarkColorPalette.white,
        background = DarkColorPalette.black,
        backgroundSecondary = DarkColorPalette.lightBlack,
        onBackground = DarkColorPalette.white,
        danger = DarkColorPalette.red,
        dangerSecondary = DarkColorPalette.red,
        onDanger = DarkColorPalette.white,
        inactive = DarkColorPalette.grey,
        positive = DarkColorPalette.green,
        onPositive = DarkColorPalette.white,
        shimmer = DarkColorPalette.grey;

  const AppColorScheme._({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.surface,
    required this.surfaceSecondary,
    required this.onSurface,
    required this.background,
    required this.backgroundSecondary,
    required this.onBackground,
    required this.danger,
    required this.dangerSecondary,
    required this.onDanger,
    required this.positive,
    required this.onPositive,
    required this.inactive,
    required this.shimmer,
  });

  @override
  ThemeExtension<AppColorScheme> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? surface,
    Color? surfaceSecondary,
    Color? onSurface,
    Color? background,
    Color? backgroundSecondary,
    Color? onBackground,
    Color? danger,
    Color? dangerSecondary,
    Color? onDanger,
    Color? positive,
    Color? onPositive,
    Color? inactive,
    Color? shimmer,
  }) {
    return AppColorScheme._(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      surface: surface ?? this.surface,
      surfaceSecondary: surfaceSecondary ?? this.surfaceSecondary,
      onSurface: onSurface ?? this.onSurface,
      background: background ?? this.background,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      onBackground: onBackground ?? this.onBackground,
      danger: danger ?? this.danger,
      dangerSecondary: dangerSecondary ?? this.dangerSecondary,
      onDanger: onDanger ?? this.onDanger,
      positive: positive ?? this.positive,
      onPositive: onPositive ?? this.onPositive,
      inactive: inactive ?? this.inactive,
      shimmer: shimmer ?? this.shimmer,
    );
  }

  @override
  ThemeExtension<AppColorScheme> lerp(covariant ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) return this;

    return AppColorScheme._(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceSecondary: Color.lerp(surfaceSecondary, other.surfaceSecondary, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundSecondary: Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      dangerSecondary: Color.lerp(dangerSecondary, other.dangerSecondary, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      positive: Color.lerp(positive, other.positive, t)!,
      onPositive: Color.lerp(onPositive, other.onPositive, t)!,
      inactive: Color.lerp(inactive, other.inactive, t)!,
      shimmer: Color.lerp(shimmer, other.shimmer, t)!,
    );
  }

  /// Returns [AppColorScheme] from [context]
  static AppColorScheme of(BuildContext context) => Theme.of(context).extension<AppColorScheme>()!;
}