import 'package:crypto_calculator/theme/theme.dart';
import 'package:crypto_calculator/theme/theme_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_switcher_page_event.dart';
part 'theme_switcher_page_state.dart';

class ThemeSwitcherPageBloc
    extends Bloc<ThemeSwitcherPageEvent, ThemeSwitcherPageState> {
  ThemeSwitcherPageBloc()
      : super(ThemeSwitcherPageState(
            themeOption: ThemeOption.light, themeData: lightTheme)) {
    on<ThemeSwitcherPageEvent>((event, emit) {
      emit(ThemeSwitcherPageState(
        themeOption: event.themeOption,
        themeData:
            event.themeOption == ThemeOption.light ? lightTheme : darkTheme,
      ));
    });
  }
}
