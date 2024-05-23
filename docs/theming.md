# Использования тем в приложении

В нашей архитектуре используется три слоя(подсмотрели у Surf, ребята вообще молодцы. Много полезного делают):

- Перечисление ресурсов.
- ThemeData.
- ThemeExtension.

## Перечисление ресурсов

Под перечислением ресурсов подразумевается перечисление шрифтом, цветом или ассетов. Например:

```dart
abstract class ColorPalette {
    static const egyptianBlue = Color(0xFF1245AA);
    static const venetianRed = Color(0xFFCC1512);
    // etc...
}
```

> [!WARNING]
> Вы не должны использовать цвета напрямую в приложении. Исользуйте либо ThemeData, либо ThemeExtension вместо этого.

## ThemeData

Этот класс описывает тему приложения. С этим классом вы можите указать цвета, шрифты, стили для текста и так далее, для Material виджетов. Например:

```dart
ThemeData(
    primaryColor: ColorPalette.egyptianBlue,
    accentColor: ColorPalette.venetianRed,
    textTheme: TextTheme(
        displayLarge: TextStyle(
            color: ColorPalette.egyptianBlue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
        ),
        // etc...
    ),
)
```

Больше про этот класс [здесь](https://api.flutter.dev/flutter/material/ThemeData-class.html).

## ThemeExtension

Если ThemeData работает только для Material виджетов, то ThemeExtension позволяет устанавливать темы для кастомных поле в ваших кастомных виджетах. Пример реализации ThemeExtension:

```dart
@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color primary;
  final Color onPrimary;
  final Color dangerBg;
  final Color dangerFg;
  // etc...

  AppColorScheme.light()
      : primary = LightColorPalette.someColor,
      : onPrimary = LightColorPalette.otherColor,
      : dangerBg = LightColorPalette.someRed,
      : dangerFg = LightColorPalette.white,
  // etc.

  AppColorScheme.dark()
      : primary = DarkColorPalette.someColor,
      : onPrimary = DarkColorPalette.otherColor,
      : dangerBg = DarkColorPalette.someRed,
      : dangerFg = DarkColorPalette.white,
  // etc.

  const AppColorScheme._({
    required this.primary,
    required this.onPrimary,
    required this.dangerBg,
    required this.dangerFg,
  });

  @override
  ThemeExtension<AppColorScheme> copyWith({
    Color? primary
    Color? onPrimary
    Color? dangerBg
    Color? dangerFg
  }) {
    return AppColorScheme(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      dangerBg: dangerBg ?? this.dangerBg,
      dangerFg: dangerFg ?? this.dangerFg,
    );
  }

  /// Method for smooth transition between two themes.
  @override
  ThemeExtension<AppColorScheme> lerp(
      ThemeExtension<AppColorScheme>? other,
      double t,
      ) {
    if (other is! AppColorScheme) {
      return this;
    }

    return AppColorScheme._(
      primary: Color.lerp(primary, other.primary, t),
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t),
      dangerBg: Color.lerp(dangerBg, other.dangerBg, t),
      dangerFg: Color.lerp(dangerFg, other.dangerFg, t),
    );
  }

  /// Returns [AppColorScheme] from [context].
  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>()!;
}
```

Больше про этот класс [здесь](https://api.flutter.dev/flutter/material/ThemeExtension-class.html).