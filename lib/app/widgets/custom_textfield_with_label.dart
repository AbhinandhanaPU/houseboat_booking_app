import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class CustomTextfieldWithLabel extends StatelessWidget {
  final String text;
  final String hintText;
  final String? helperText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int maxLines;
  final bool obscureText;
  final VoidCallback? onTap;
  final bool readOnly;

  const CustomTextfieldWithLabel({
    super.key,
    required this.text,
    required this.hintText,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
    this.obscureText = false,
    this.onTap,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          children: [
            Text(text, style: AppTextStyles.boldBody),
            Text(
              ' *',
              style: AppTextStyles.boldBody.copyWith(
                color: AppColors.errorColor,
              ),
            ),
          ],
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          maxLines: maxLines,
          obscureText: obscureText,
          obscuringCharacter: '*',
          onTap: onTap,
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            helperText: helperText,
            helperStyle: AppTextStyles.subtitle,
          ),
        )
      ],
    );
  }
}
