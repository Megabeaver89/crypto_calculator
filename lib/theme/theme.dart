import 'package:flutter/material.dart';

final mainColorDarkTheme = Colors.amber;
final secondaryColorDarkTheme = Colors.white54;
final backGroundColorDarkTheme = Colors.black87;

final darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(primary: mainColorDarkTheme),
  appBarTheme: AppBarTheme(
      backgroundColor: mainColorDarkTheme,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 25)),
  scaffoldBackgroundColor: Colors.black,
  dividerColor: mainColorDarkTheme,
  textTheme: TextTheme(
      bodyMedium: TextStyle(
          color: mainColorDarkTheme, fontSize: 20, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          color: secondaryColorDarkTheme,
          fontSize: 16,
          fontWeight: FontWeight.w700),
      labelSmall: TextStyle(
          color: secondaryColorDarkTheme,
          fontSize: 12,
          fontWeight: FontWeight.w700)),
);
