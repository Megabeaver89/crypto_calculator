import 'package:crypto_calculator/common_widgets/icon_text_button.dart';
import 'package:flutter/material.dart';

List<IconTextButton> getMainPageButtons(BuildContext context) {
  return [
    IconTextButton(
        icon: Icons.wallet_outlined, text: 'Кошелек', onPressed: () {}),
    IconTextButton(
        icon: Icons.monetization_on_outlined,
        text: 'Конвертер',
        onPressed: () {}),
    IconTextButton(
        icon: Icons.bar_chart_outlined, text: 'Топ 50', onPressed: () {}),
    IconTextButton(
        icon: Icons.settings_outlined,
        text: 'Настройки',
        onPressed: () {
          Navigator.of(context).pushNamed('/settings');
        }),
  ];
}

final List<IconTextButton> settingsPageButtons = [
  IconTextButton(
      icon: Icons.brightness_6, text: 'Изменить тему', onPressed: () {}),
];
