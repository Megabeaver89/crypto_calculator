import 'package:crypto_calculator/common_widgets/icon_text_button.dart';
import 'package:flutter/material.dart';

final List<IconTextButton> mainPagebuttons = [
  IconTextButton(
      icon: Icons.wallet_outlined, text: 'Кошелек', onPressed: () {}),
  IconTextButton(
      icon: Icons.monetization_on_outlined,
      text: 'Конвертер',
      onPressed: () {}),
  IconTextButton(
      icon: Icons.bar_chart_outlined, text: 'Топ 50', onPressed: () {}),
  IconTextButton(
      icon: Icons.settings_outlined, text: 'Настройки', onPressed: () {}),
];
