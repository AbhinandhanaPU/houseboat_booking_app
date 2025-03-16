import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class CustomcoloredButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onTap;

  const CustomcoloredButton({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.lightPrimary,
              AppColors.darkPrimary,
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.button,
          ),
        ),
      ),
    );
  }
}
