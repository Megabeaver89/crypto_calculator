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
  iconTheme: IconThemeData(color: mainColorDarkTheme),
  textTheme: TextTheme(
      bodyMedium: TextStyle(
          color: mainColorDarkTheme, fontSize: 20, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          color: secondaryColorDarkTheme,
          fontSize: 14,
          fontWeight: FontWeight.w700),
      labelSmall: TextStyle(
          color: secondaryColorDarkTheme,
          fontSize: 12,
          fontWeight: FontWeight.w700)),
);

final mainColorLightTheme = Colors.blue;
final secondaryColorLightTheme = Colors.black87;
final backGroundColorLightTheme = Colors.white;

final lightTheme = ThemeData(
  colorScheme: ColorScheme.light(primary: mainColorLightTheme),
  appBarTheme: AppBarTheme(
      backgroundColor: mainColorLightTheme,
      centerTitle: true,
      titleTextStyle: TextStyle(color: secondaryColorLightTheme, fontSize: 25)),
  scaffoldBackgroundColor: backGroundColorLightTheme,
  dividerColor: mainColorLightTheme,
  iconTheme: IconThemeData(color: mainColorLightTheme),
  textTheme: TextTheme(
      bodyMedium: TextStyle(
          color: mainColorLightTheme,
          fontSize: 20,
          fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          color: secondaryColorLightTheme,
          fontSize: 14,
          fontWeight: FontWeight.w700),
      labelSmall: TextStyle(
          color: secondaryColorLightTheme,
          fontSize: 12,
          fontWeight: FontWeight.w700)),
);
