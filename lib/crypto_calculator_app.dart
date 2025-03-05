import 'package:crypto_calculator/features/constants/routes.dart';
import 'package:crypto_calculator/features/main_page/view/main_page.dart';
import 'package:crypto_calculator/features/settings_page/settings_page.dart';
import 'package:crypto_calculator/features/theme_switcher_page/theme_switcher_page.dart';
import 'package:crypto_calculator/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCalculatorApp extends StatefulWidget {
  const CryptoCalculatorApp({super.key});

  @override
  State<CryptoCalculatorApp> createState() => _CryptoCalculatorAppState();
}

class _CryptoCalculatorAppState extends State<CryptoCalculatorApp> {
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Calculator App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      routes: {
        homeRoute: (context) => const MainPage(),
        settingsRoute: (context) => const SetttingsPage(),
        themeRoute: (context) => ThemeSwitcherPage(onThemeChanged: _togleTheme),
      },
    );
  }

  void _togleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }
}
