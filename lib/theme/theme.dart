import 'package:flutter/material.dart';

final primaryColor = Colors.green[400];

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    inversePrimary: Colors.grey,
    primary: primaryColor,
    seedColor: primaryColor!,
    brightness: Brightness.light,
    secondary: Colors.white,
  ),
  textTheme: textTheme,
);

final dartkTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.black,
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    inversePrimary: Colors.grey,
    primary: primaryColor,
    seedColor: primaryColor!,
    brightness: Brightness.dark,
    secondary: Colors.black,
  ),
  textTheme: textTheme,
);

final textTheme = TextTheme(
  titleMedium: TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  bodyMedium: TextStyle(
    color: primaryColor,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  ),
  bodySmall: TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
);
