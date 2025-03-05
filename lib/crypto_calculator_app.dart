import 'package:crypto_calculator/features/constants/routes.dart';
import 'package:crypto_calculator/features/main_page/view/main_page.dart';
import 'package:crypto_calculator/features/settings_page/settings_page.dart';
import 'package:crypto_calculator/features/theme_switcher_page/theme_switcher_page.dart';
import 'package:crypto_calculator/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCalculatorApp extends StatelessWidget {
  const CryptoCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Calculator App',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      routes: {
        homeRoute: (context) => const MainPage(),
        settingsRoute: (context) => const SetttingsPage(),
        themeRoute: (context) => const ThemeSwitcherPage(),
      },
    );
  }
}
