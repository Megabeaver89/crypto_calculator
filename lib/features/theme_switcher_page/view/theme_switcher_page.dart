import 'package:crypto_calculator/common_widgets/custom_radio_list.dart';
import 'package:crypto_calculator/core/base_page.dart';
import 'package:crypto_calculator/features/constants/text_buttons.dart';
import 'package:crypto_calculator/features/theme_switcher_page/bloc/theme_switcher_page_bloc.dart';
import 'package:crypto_calculator/theme/theme_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeSwitcherPage extends BasePage {
  const ThemeSwitcherPage({super.key}) : super(title: themeText);

  @override
  BasePageState<ThemeSwitcherPage> createState() => _ThemeSwitcherPageState();
}

class _ThemeSwitcherPageState extends BasePageState<ThemeSwitcherPage> {
  @override
  Widget buildBody(BuildContext context) {
    return BlocBuilder<ThemeSwitcherPageBloc, ThemeSwitcherPageState>(
      builder: (context, state) {
        return CustomRadioList<ThemeOption>(
            options: ThemeOption.values,
            selectedValue: state.themeOption,
            onChanged: (ThemeOption newValue) {
              context
                  .read<ThemeSwitcherPageBloc>()
                  .add(ThemeSwitcherPageEvent(themeOption: newValue));
            },
            labelBuilder: (option) =>
                option == ThemeOption.dark ? darkThemeText : lightThemeText);
      },
    );
  }
}
