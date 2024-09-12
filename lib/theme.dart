import 'package:flutter/material.dart';

// Função auxiliar para criar um TextTheme com uma cor padrão
TextTheme _buildTextTheme(TextTheme base, Color color) {
  return base.copyWith(
    bodyLarge: base.bodyLarge?.copyWith(color: color),
    bodyMedium: base.bodyMedium?.copyWith(color: color),
    bodySmall: base.bodySmall?.copyWith(color: color),
    displayLarge: base.displayLarge?.copyWith(color: color),
    displayMedium: base.displayMedium?.copyWith(color: color),
    displaySmall: base.displaySmall?.copyWith(color: color),
    headlineLarge: base.headlineLarge?.copyWith(color: color),
    headlineMedium: base.headlineMedium?.copyWith(color: color),
    headlineSmall: base.headlineSmall?.copyWith(color: color),
    titleLarge: base.titleLarge?.copyWith(color: color),
    titleMedium: base.titleMedium?.copyWith(color: color),
    titleSmall: base.titleSmall?.copyWith(color: color),
    labelLarge: base.labelLarge?.copyWith(color: color),
    labelMedium: base.labelMedium?.copyWith(color: color),
    labelSmall: base.labelSmall?.copyWith(color: color),
  );
}

final lightColorScheme = ColorScheme(
  primary: Colors.blueGrey[700]!,
  primaryContainer: Colors.blueGrey[200]!,
  secondary: Colors.teal[700]!,
  secondaryContainer: Colors.teal[200]!,
  surface: Colors.white,
  error: Colors.red,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: Colors.blueGrey[900]!,
  onError: Colors.white,
  brightness: Brightness.light,
);

final darkColorScheme = ColorScheme(
  primary: Colors.blueGrey[300]!,
  primaryContainer: Colors.blueGrey[700]!,
  secondary: Colors.teal[300]!,
  secondaryContainer: Colors.teal[700]!,
  surface: Colors.blueGrey[800]!,
  error: Colors.red[400]!,
  onPrimary: Colors.blueGrey[100]!,
  onSecondary: Colors.blueGrey[100]!,
  onSurface: Colors.white,
  onError: Colors.blueGrey[900]!,
  brightness: Brightness.dark,
);

final lightTheme = ThemeData(
  colorScheme: lightColorScheme,
  useMaterial3: true,
  textTheme:
      _buildTextTheme(ThemeData.light().textTheme, lightColorScheme.onSurface),
  appBarTheme: AppBarTheme(
    backgroundColor: lightColorScheme.primaryContainer,
    titleTextStyle: TextStyle(color: lightColorScheme.onPrimary, fontSize: 20),
  ),
);

final darkTheme = ThemeData(
  colorScheme: darkColorScheme,
  useMaterial3: true,
  textTheme:
      _buildTextTheme(ThemeData.dark().textTheme, darkColorScheme.onSurface),
  appBarTheme: AppBarTheme(
    backgroundColor: darkColorScheme.primaryContainer,
    titleTextStyle: TextStyle(color: darkColorScheme.onPrimary, fontSize: 20),
  ),
);
