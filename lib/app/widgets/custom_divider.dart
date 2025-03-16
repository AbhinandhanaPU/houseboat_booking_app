import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';

class CustomDivider extends StatelessWidget {
  final double thickness;
  final double height;
  final Color? color;

  const CustomDivider({
    super.key,
    this.thickness = 1.0,
    this.height = 10.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.lightGrey.withAlpha(128),
      thickness: thickness,
      height: height,
    );
  }
}
