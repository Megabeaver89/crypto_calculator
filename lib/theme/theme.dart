import 'package:flutter/material.dart';

final mainColorDarkTheme = Colors.amber;
final secondaryColorDarkTheme = Colors.white54;
final backGroundColorDarkTheme = Colors.black87;
final mainColorLightTheme = Colors.blue;
final secondaryColorLightTheme = Colors.black87;
final backGroundColorLightTheme = Colors.white;
ThemeData baseTheme({
  required Color primaryColor,
  required Color secondaryColor,
  required Color backGroundColor,
}) {
  return ThemeData(
    colorScheme: ColorScheme.light(primary: primaryColor),
    appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black87, fontSize: 25)),
    scaffoldBackgroundColor: backGroundColor,
    dividerColor: primaryColor,
    iconTheme: IconThemeData(color: primaryColor),
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
    radioTheme: RadioThemeData(fillColor: WidgetStatePropertyAll(primaryColor)),
    textTheme: TextTheme(
        bodyMedium: TextStyle(
            color: primaryColor, fontSize: 20, fontWeight: FontWeight.w500),
        labelMedium: TextStyle(
            color: secondaryColor, fontSize: 14, fontWeight: FontWeight.w700),
        labelSmall: TextStyle(
            color: secondaryColor, fontSize: 12, fontWeight: FontWeight.w700)),
  );
}

final lightTheme = baseTheme(
    primaryColor: mainColorLightTheme,
    secondaryColor: secondaryColorLightTheme,
    backGroundColor: backGroundColorLightTheme);
final darkTheme = baseTheme(
    primaryColor: mainColorDarkTheme,
    secondaryColor: secondaryColorDarkTheme,
    backGroundColor: backGroundColorDarkTheme);
