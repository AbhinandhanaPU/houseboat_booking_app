import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final double textSize;
  final Color? iconColor;
  final Color? textColor;
  final FontWeight? textWeight;
  final VoidCallback? onTap;

  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
    this.iconSize = 22.0,
    this.textSize = 15.0,
    this.iconColor,
    this.textColor,
    this.textWeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize, 
            color: iconColor ?? AppColors.lightGrey,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: textColor ?? AppColors.whiteColor,
              fontWeight: textWeight ?? FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
