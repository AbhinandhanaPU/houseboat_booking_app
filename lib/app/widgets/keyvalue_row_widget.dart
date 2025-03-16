import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';

class KeyValueRow extends StatelessWidget {
  final String keyText;
  final String valueText;
  final double textSize;
  final Color textColor;

  const KeyValueRow({
    super.key,
    required this.keyText,
    required this.valueText,
    this.textSize = 14,
    this.textColor = AppColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              keyText,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              ':  $valueText',
              style: TextStyle(
                fontSize: textSize,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
