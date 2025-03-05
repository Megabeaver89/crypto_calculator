import 'package:flutter/material.dart';

class CustomRadioList<T> extends StatelessWidget {
  final List<T> options;
  final T selectedValue;
  final ValueChanged<T> onChanged;
  final String Function(T) labelBuilder;

  const CustomRadioList({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
    required this.labelBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: options.map((option) {
      return RadioListTile<T>(
        title: Text(labelBuilder(option)),
        value: option,
        groupValue: selectedValue,
        onChanged: (T? value) {
          if (value != null) {
            onChanged(value);
          }
        },
      );
    }).toList());
  }
}
