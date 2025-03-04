import 'package:crypto_calculator/core/base_page.dart';
import 'package:crypto_calculator/features/constants/main_page_buttons.dart';
import 'package:flutter/material.dart';

class MainPage extends BasePage {
  const MainPage({super.key}) : super(title: 'Crypto Calculator');

  @override
  BasePageState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage> {
  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: mainPagebuttons.length,
          itemBuilder: (context, index) {
            return mainPagebuttons[index];
          }),
    );
  }
}
