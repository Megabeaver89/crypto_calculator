import 'package:crypto_calculator/common_widgets/icon_text_button.dart';
import 'package:crypto_calculator/features/constants/routes.dart';
import 'package:crypto_calculator/features/constants/text_buttons.dart';
import 'package:flutter/material.dart';

List<IconTextButton> getMainPageButtons(BuildContext context) {
  return [
    IconTextButton(
        icon: Icons.wallet_outlined, text: walletText, onPressed: () {}),
    IconTextButton(
        icon: Icons.monetization_on_outlined,
        text: convertText,
        onPressed: () {}),
    IconTextButton(
        icon: Icons.bar_chart_outlined, text: topFiftyText, onPressed: () {}),
    IconTextButton(
        icon: Icons.settings_outlined,
        text: settingsText,
        onPressed: () {
          Navigator.of(context).pushNamed(settingsRoute);
        }),
  ];
}

List<IconTextButton> getSettingsPageButtons(BuildContext context) {
  return [
    IconTextButton(
        icon: Icons.brightness_6,
        text: themeText,
        onPressed: () {
          Navigator.of(context).pushNamed(themeRoute);
        }),
    IconTextButton(icon: Icons.language, text: languageText, onPressed: () {}),
  ];
}
