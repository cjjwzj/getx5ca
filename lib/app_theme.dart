import "package:flutter/material.dart";

class AppTheme {
  const AppTheme();

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff88521c),
      surfaceTint: Color(0xff88521c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdcc1),
      onPrimaryContainer: Color(0xff6b3b05),
      secondary: Color(0xff3f6836),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc0efb0),
      onSecondaryContainer: Color(0xff285021),
      tertiary: Color(0xff3a608f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd3e3ff),
      onTertiaryContainer: Color(0xff1f4876),
      error: Color(0xff8f4b38),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdbd1),
      onErrorContainer: Color(0xff723523),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff3f484a),
      outline: Color(0xff6f797a),
      outlineVariant: Color(0xffbfc8ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffffb77a),
      primaryFixed: Color(0xffffdcc1),
      onPrimaryFixed: Color(0xff2e1500),
      primaryFixedDim: Color(0xffffb77a),
      onPrimaryFixedVariant: Color(0xff6b3b05),
      secondaryFixed: Color(0xffc0efb0),
      onSecondaryFixed: Color(0xff002200),
      secondaryFixedDim: Color(0xffa4d396),
      onSecondaryFixedVariant: Color(0xff285021),
      tertiaryFixed: Color(0xffd3e3ff),
      onTertiaryFixed: Color(0xff001c39),
      tertiaryFixedDim: Color(0xffa4c9fe),
      onTertiaryFixedVariant: Color(0xff1f4876),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff542c00),
      surfaceTint: Color(0xff88521c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff99602a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff163e11),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4d7744),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff063764),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4a6f9f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5d2514),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffa15a45),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff0c1213),
      onSurfaceVariant: Color(0xff2f3839),
      outline: Color(0xff4b5456),
      outlineVariant: Color(0xff656f70),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffffb77a),
      primaryFixed: Color(0xff99602a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff7c4813),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4d7744),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff365e2e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4a6f9f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff305685),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2c7c9),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe3e9ea),
      surfaceContainerHigh: Color(0xffd8dedf),
      surfaceContainerHighest: Color(0xffcdd3d4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff462300),
      surfaceTint: Color(0xff88521c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6e3d07),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0b3408),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2a5223),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002d55),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff224a78),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff501b0b),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff753725),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff252e2f),
      outlineVariant: Color(0xff414b4c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffffb77a),
      primaryFixed: Color(0xff6e3d07),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4f2900),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2a5223),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff133b0e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff224a78),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003360),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb4babb),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf2f3),
      surfaceContainer: Color(0xffdee3e5),
      surfaceContainerHigh: Color(0xffcfd5d6),
      surfaceContainerHighest: Color(0xffc2c7c9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb77a),
      surfaceTint: Color(0xffffb77a),
      onPrimary: Color(0xff4c2700),
      primaryContainer: Color(0xff6b3b05),
      onPrimaryContainer: Color(0xffffdcc1),
      secondary: Color(0xffa4d396),
      onSecondary: Color(0xff10380c),
      secondaryContainer: Color(0xff285021),
      onSecondaryContainer: Color(0xffc0efb0),
      tertiary: Color(0xffa4c9fe),
      onTertiary: Color(0xff00315c),
      tertiaryContainer: Color(0xff1f4876),
      onTertiaryContainer: Color(0xffd3e3ff),
      error: Color(0xffffb5a0),
      onError: Color(0xff561f0f),
      errorContainer: Color(0xff723523),
      onErrorContainer: Color(0xffffdbd1),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffdee3e5),
      onSurfaceVariant: Color(0xffbfc8ca),
      outline: Color(0xff899294),
      outlineVariant: Color(0xff3f484a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff88521c),
      primaryFixed: Color(0xffffdcc1),
      onPrimaryFixed: Color(0xff2e1500),
      primaryFixedDim: Color(0xffffb77a),
      onPrimaryFixedVariant: Color(0xff6b3b05),
      secondaryFixed: Color(0xffc0efb0),
      onSecondaryFixed: Color(0xff002200),
      secondaryFixedDim: Color(0xffa4d396),
      onSecondaryFixedVariant: Color(0xff285021),
      tertiaryFixed: Color(0xffd3e3ff),
      onTertiaryFixed: Color(0xff001c39),
      tertiaryFixedDim: Color(0xffa4c9fe),
      onTertiaryFixedVariant: Color(0xff1f4876),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd4b3),
      surfaceTint: Color(0xffffb77a),
      onPrimary: Color(0xff3d1e00),
      primaryContainer: Color(0xffc28349),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbae9ab),
      onSecondary: Color(0xff042d03),
      secondaryContainer: Color(0xff709c64),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffc9deff),
      onTertiary: Color(0xff00264a),
      tertiaryContainer: Color(0xff6e93c5),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2c7),
      onError: Color(0xff481506),
      errorContainer: Color(0xffcb7c66),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd4dee0),
      outline: Color(0xffaab4b5),
      outlineVariant: Color(0xff889294),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff6d3c06),
      primaryFixed: Color(0xffffdcc1),
      onPrimaryFixed: Color(0xff1f0c00),
      primaryFixedDim: Color(0xffffb77a),
      onPrimaryFixedVariant: Color(0xff542c00),
      secondaryFixed: Color(0xffc0efb0),
      onSecondaryFixed: Color(0xff001600),
      secondaryFixedDim: Color(0xffa4d396),
      onSecondaryFixedVariant: Color(0xff163e11),
      tertiaryFixed: Color(0xffd3e3ff),
      onTertiaryFixed: Color(0xff001227),
      tertiaryFixedDim: Color(0xffa4c9fe),
      onTertiaryFixedVariant: Color(0xff063764),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff3f4647),
      surfaceContainerLowest: Color(0xff040809),
      surfaceContainerLow: Color(0xff191f20),
      surfaceContainer: Color(0xff23292a),
      surfaceContainerHigh: Color(0xff2d3435),
      surfaceContainerHighest: Color(0xff393f40),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffede0),
      surfaceTint: Color(0xffffb77a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfffbb375),
      onPrimaryContainer: Color(0xff160800),
      secondary: Color(0xffcdfdbd),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa1cf93),
      onSecondaryContainer: Color(0xff000f00),
      tertiary: Color(0xffe9f0ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa0c5fa),
      onTertiaryContainer: Color(0xff000c1d),
      error: Color(0xffffece7),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaf99),
      onErrorContainer: Color(0xff1e0300),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe8f2f3),
      outlineVariant: Color(0xffbbc4c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff6d3c06),
      primaryFixed: Color(0xffffdcc1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb77a),
      onPrimaryFixedVariant: Color(0xff1f0c00),
      secondaryFixed: Color(0xffc0efb0),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffa4d396),
      onSecondaryFixedVariant: Color(0xff001600),
      tertiaryFixed: Color(0xffd3e3ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa4c9fe),
      onTertiaryFixedVariant: Color(0xff001227),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff4b5152),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1b2122),
      surfaceContainer: Color(0xff2b3133),
      surfaceContainerHigh: Color(0xff363c3e),
      surfaceContainerHighest: Color(0xff424849),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        //  textTheme: textTheme.apply(
        //    bodyColor: colorScheme.onSurface,
        //    displayColor: colorScheme.onSurface,
        //  ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
