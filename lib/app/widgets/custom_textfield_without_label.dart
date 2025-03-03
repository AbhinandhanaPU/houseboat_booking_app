import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

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
  final Function()? onTap;

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
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.backgroundSecondary,
        border: OutlineInputBorder(),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        helperText: helperText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.lightPrimary,
            width: 2,
          ),
        ),
      ),
    );
  }
}
