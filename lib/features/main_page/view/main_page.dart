import 'package:crypto_calculator/common_widgets/grid_view_icon_buttons.dart';
import 'package:crypto_calculator/core/base_page.dart';
import 'package:crypto_calculator/features/constants/icon_text_buttons.dart';
import 'package:flutter/material.dart';

class MainPage extends BasePage {
  const MainPage({super.key}) : super(title: 'Crypto Calculator');

  @override
  BasePageState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage> {
  @override
  Widget buildBody(BuildContext context) {
    final mainPageButtons = getMainPageButtons(context);
    return GridViewIconButtons(listIconTextButtons: mainPageButtons);
  }
}
