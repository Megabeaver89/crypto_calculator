import 'package:crypto_calculator/common_widgets/icon_text_button.dart';
import 'package:flutter/material.dart';

class GridViewIconButtons extends StatelessWidget {
  const GridViewIconButtons({super.key, required this.listIconTextButtons});
  final List<IconTextButton> listIconTextButtons;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 0),
        itemCount: listIconTextButtons.length,
        itemBuilder: (context, index) {
          return listIconTextButtons[index];
        });
  }
}
