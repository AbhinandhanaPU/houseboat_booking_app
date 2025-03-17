import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class RadioButtonList extends StatelessWidget {
  final List<String> options;
  final String selectedValue;
  final ValueChanged<String?> onChanged;

  const RadioButtonList({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: options.map((option) {
        return RadioListTile<String>(
          title: Text(option, style: AppTextStyles.body),
          value: option,
          groupValue: selectedValue,
          onChanged: onChanged,
          activeColor: AppColors.lightPrimary,
          contentPadding: EdgeInsets.all(0),
        );
      }).toList(),
    );
  }
}
