import 'package:crypto_calculator/common_widgets/custom_radio_list.dart';
import 'package:crypto_calculator/core/base_page.dart';
import 'package:crypto_calculator/features/constants/text_buttons.dart';
import 'package:crypto_calculator/theme/theme_option.dart';
import 'package:flutter/material.dart';

class ThemeSwitcherPage extends BasePage {
  const ThemeSwitcherPage({super.key, required this.onThemeChanged})
      : super(title: themeText);

  final Function() onThemeChanged;

  @override
  BasePageState<ThemeSwitcherPage> createState() => _ThemeSwitcherPageState();
}

class _ThemeSwitcherPageState extends BasePageState<ThemeSwitcherPage> {
  ThemeOption _selectedTheme = ThemeOption.light;

  @override
  Widget buildBody(BuildContext context) {
    return CustomRadioList<ThemeOption>(
        options: ThemeOption.values,
        selectedValue: _selectedTheme,
        onChanged: (ThemeOption newValue) {
          setState(() {
            _selectedTheme = newValue;
            widget.onThemeChanged();
          });
        },
        labelBuilder: (option) =>
            option == ThemeOption.dark ? darkThemeText : lightThemeText);
  }
}
