// ignore_for_file: use_full_hex_values_for_flutter_colors, deprecated_member_use

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283587474),
      surfaceTint: Color(4283587474),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292796671),
      onPrimaryContainer: Color(4278916427),
      secondary: Color(4284177778),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292927993),
      onSecondaryContainer: Color(4279769644),
      tertiary: Color(4286010221),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957041),
      onTertiaryContainer: Color(4281143848),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294703359),
      onSurface: Color(4279966497),
      onSurfaceVariant: Color(4282795599),
      outline: Color(4285953664),
      outlineVariant: Color(4291282384),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348150),
      inversePrimary: Color(4290495487),
      primaryFixed: Color(4292796671),
      onPrimaryFixed: Color(4278916427),
      primaryFixedDim: Color(4290495487),
      onPrimaryFixedVariant: Color(4282008441),
      secondaryFixed: Color(4292927993),
      onSecondaryFixed: Color(4279769644),
      secondaryFixedDim: Color(4291020253),
      onSecondaryFixedVariant: Color(4282599001),
      tertiaryFixed: Color(4294957041),
      onTertiaryFixed: Color(4281143848),
      tertiaryFixedDim: Color(4293311191),
      onTertiaryFixedVariant: Color(4284300373),
      surfaceDim: Color(4292598240),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294308602),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293190121),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281745268),
      surfaceTint: Color(4283587474),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285034922),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282335829),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285625225),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284037200),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287523204),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294703359),
      onSurface: Color(4279966497),
      onSurfaceVariant: Color(4282532427),
      outline: Color(4284374631),
      outlineVariant: Color(4286216835),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348150),
      inversePrimary: Color(4290495487),
      primaryFixed: Color(4285034922),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283390096),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285625225),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283980655),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287523204),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285813098),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292598240),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294308602),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293190121),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279442770),
      surfaceTint: Color(4283587474),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281745268),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280164659),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282335829),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281669679),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284037200),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294703359),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280492843),
      outline: Color(4282532427),
      outlineVariant: Color(4282532427),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348150),
      inversePrimary: Color(4293585663),
      primaryFixed: Color(4281745268),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280232029),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282335829),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280888382),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284037200),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282393402),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292598240),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294308602),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293190121),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290495487),
      surfaceTint: Color(4290495487),
      onPrimary: Color(4280495201),
      primaryContainer: Color(4282008441),
      onPrimaryContainer: Color(4292796671),
      secondary: Color(4291020253),
      onSecondary: Color(4281151298),
      secondaryContainer: Color(4282599001),
      onSecondaryContainer: Color(4292927993),
      tertiary: Color(4293311191),
      onTertiary: Color(4282656317),
      tertiaryContainer: Color(4284300373),
      onTertiaryContainer: Color(4294957041),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279374616),
      onSurface: Color(4293190121),
      onSurfaceVariant: Color(4291282384),
      outline: Color(4287664282),
      outlineVariant: Color(4282795599),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293190121),
      inversePrimary: Color(4283587474),
      primaryFixed: Color(4292796671),
      onPrimaryFixed: Color(4278916427),
      primaryFixedDim: Color(4290495487),
      onPrimaryFixedVariant: Color(4282008441),
      secondaryFixed: Color(4292927993),
      onSecondaryFixed: Color(4279769644),
      secondaryFixedDim: Color(4291020253),
      onSecondaryFixedVariant: Color(4282599001),
      tertiaryFixed: Color(4294957041),
      onTertiaryFixed: Color(4281143848),
      tertiaryFixedDim: Color(4293311191),
      onTertiaryFixedVariant: Color(4284300373),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281940287),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279966497),
      surfaceContainer: Color(4280229669),
      surfaceContainerHigh: Color(4280887599),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290824191),
      surfaceTint: Color(4290495487),
      onPrimary: Color(4278521670),
      primaryContainer: Color(4286877128),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291348961),
      onSecondary: Color(4279375142),
      secondaryContainer: Color(4287467430),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293574364),
      onTertiary: Color(4280749090),
      tertiaryContainer: Color(4289562016),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374616),
      onSurface: Color(4294834943),
      onSurfaceVariant: Color(4291545556),
      outline: Color(4288914092),
      outlineVariant: Color(4286808716),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293190121),
      inversePrimary: Color(4282074234),
      primaryFixed: Color(4292796671),
      onPrimaryFixed: Color(4278192193),
      primaryFixedDim: Color(4290495487),
      onPrimaryFixedVariant: Color(4280889959),
      secondaryFixed: Color(4292927993),
      onSecondaryFixed: Color(4279046177),
      secondaryFixedDim: Color(4291020253),
      onSecondaryFixedVariant: Color(4281480520),
      tertiaryFixed: Color(4294957041),
      onTertiaryFixed: Color(4280354589),
      tertiaryFixedDim: Color(4293311191),
      onTertiaryFixedVariant: Color(4283116611),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281940287),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279966497),
      surfaceContainer: Color(4280229669),
      surfaceContainerHigh: Color(4280887599),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294834943),
      surfaceTint: Color(4290495487),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290824191),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294834943),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291348961),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293574364),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294834943),
      outline: Color(4291545556),
      outlineVariant: Color(4291545556),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293190121),
      inversePrimary: Color(4280034650),
      primaryFixed: Color(4293191167),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290824191),
      onPrimaryFixedVariant: Color(4278521670),
      secondaryFixed: Color(4293191166),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291348961),
      onSecondaryFixedVariant: Color(4279375142),
      tertiaryFixed: Color(4294958578),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293574364),
      onTertiaryFixedVariant: Color(4280749090),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281940287),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279966497),
      surfaceContainer: Color(4280229669),
      surfaceContainerHigh: Color(4280887599),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
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
