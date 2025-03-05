import 'package:crypto_calculator/common_widgets/grid_view_icon_buttons.dart';
import 'package:crypto_calculator/core/base_page.dart';
import 'package:crypto_calculator/features/constants/icon_text_buttons.dart';
import 'package:flutter/material.dart';

class SetttingsPage extends BasePage {
  const SetttingsPage({super.key}) : super(title: 'Settings');

  @override
  BasePageState<SetttingsPage> createState() => _SetttingsPageState();
}

class _SetttingsPageState extends BasePageState<SetttingsPage> {
  @override
  Widget buildBody(BuildContext context) {
    final settingsPageButtons = getSettingsPageButtons(context);
    return GridViewIconButtons(listIconTextButtons: settingsPageButtons);
  }
}
