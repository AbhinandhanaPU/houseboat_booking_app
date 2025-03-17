import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class CustomTextfieldWithoutLabel extends StatelessWidget {
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

  const CustomTextfieldWithoutLabel({
    super.key,
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
    return TextFormField(
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
    );
  }
}
