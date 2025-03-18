import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final EdgeInsetsGeometry? padding;

  const CustomContainer({
    super.key,
    required this.child,
    this.width = double.infinity,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.lightGrey,
          width: 0.5,
        ),
      ),
      child: child,
    );
  }
}
