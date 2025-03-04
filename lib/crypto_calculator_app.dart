import 'package:crypto_calculator/features/main_page/main_page.dart';
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
      home: const MainPage(title: 'Crypto Calculator'),
    );
  }
}
