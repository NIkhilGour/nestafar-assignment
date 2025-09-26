import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF757575), // main brand color
    onPrimary: Colors.white, // text/icons on primary
    secondary: Color(0xFFE0E0E0), // cards, containers
    onSecondary: Colors.black, // text on background
    surface: Colors.white, // default widget bg
    onSurface: Colors.black, // text/icons on surface
    error: Colors.red,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: const Color(0xFFF5F5F5),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
  ),
);
