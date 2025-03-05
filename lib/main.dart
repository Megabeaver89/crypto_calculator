import 'package:crypto_calculator/crypto_calculator_app.dart';
import 'package:crypto_calculator/features/theme_switcher_page/bloc/theme_switcher_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeSwitcherPageBloc(),
    child: const CryptoCalculatorApp(),
  ));
}
