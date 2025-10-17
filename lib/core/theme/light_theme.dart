import 'package:flutter/material.dart';
import '/core/theme/light_colors.dart';

final ColorScheme lightColorScheme = ColorScheme(
  primary: AppLightColors.primary,
  // primaryVariant: Colors.blueAccent,
  secondary: AppLightColors.secondary,
  // secondaryVariant: Colors.greenAccent,
  surface: Colors.white,
  tertiary: Color(0xFF757575),
  onSurface: Colors.black,
  // surfaceContainerHighest: Colors.black,
  error: Color(0xFFEC221F),
  onPrimary: Colors.white,
  onSecondary: Colors.black,
  onError: Color(0xFFEC221F),
  brightness: Brightness.light,

  // More colors
);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: lightColorScheme,
  useMaterial3: true,
  // scaffoldBackgroundColor: Colors.white,
);
