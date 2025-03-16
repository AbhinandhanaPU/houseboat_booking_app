import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';

class BadgeIndicator extends StatelessWidget {
  final int count;
  final Color color;

  const BadgeIndicator({
    super.key,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      constraints: const BoxConstraints(
        minWidth: 18,
        minHeight: 18,
      ),
      child: Text(
        count > 99 ? '99+' : '$count',
        style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
