import 'package:crypto_calculator/common_widgets/custom_radio_list.dart';
import 'package:crypto_calculator/core/base_page.dart';
import 'package:flutter/material.dart';

enum ThemeOption { dark, light }

class ThemeSwitcherPage extends BasePage {
  const ThemeSwitcherPage({super.key}) : super(title: 'Theme');

  @override
  _ThemeSwitcherPageState createState() => _ThemeSwitcherPageState();
}

class _ThemeSwitcherPageState extends BasePageState<ThemeSwitcherPage> {
  ThemeOption _selectedTheme = ThemeOption.dark;

  @override
  Widget buildBody(BuildContext context) {
    return CustomRadioList<ThemeOption>(
        options: ThemeOption.values,
        selectedValue: _selectedTheme,
        onChanged: (ThemeOption newValue) {
          setState(() {
            _selectedTheme = newValue;
          });
        },
        labelBuilder: (option) =>
            option == ThemeOption.dark ? 'Темная тема' : 'Светлая тема');
  }
}
