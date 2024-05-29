import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const lightColorScheme = ColorScheme(
  brightness: Brightness.light, 
  primary: Color.fromARGB(255, 0, 0, 0),
  onPrimary: Color(0xFFFFFFFF), 
  secondary: Color.fromARGB(255, 54, 54, 54),  
  onSecondary: Color(0xFFFFFFFF), 
  error: Color.fromARGB(255, 207, 51, 51), 
  onError: Color(0xFFFFFFFF), 
  background: Color(0XFFFCFDF6),
  onBackground: Color(0xFF1A1C18),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
  surface: Color(0xFFF9FAF3), 
  onSurface: Color(0xFF1A1C18),
  );

  const darkColorScheme = ColorScheme(
    brightness: Brightness.dark, 
  primary: Color.fromARGB(255, 0, 0, 0),
  onPrimary: Color(0xFFFFFFFF), 
  secondary: Color.fromARGB(255, 54, 54, 54), 
  onSecondary: Color(0xFFFFFFFF), 
  error: Color.fromARGB(255, 207, 51, 51), 
  onError: Color(0xFFFFFFFF), 
  background: Color(0XFFFCFDF6),
  onBackground: Color(0xFF1A1C18),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
  surface: Color(0xFFF9FAF3), 
  onSurface: Color(0xFF1A1C18),
  );

  ThemeData lightMode = ThemeData(
    useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        lightColorScheme.error, 
      ),
      foregroundColor:
          MaterialStateProperty.all<Color>(Colors.white),
      elevation: MaterialStateProperty.all<double>(5.0),
      padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
);