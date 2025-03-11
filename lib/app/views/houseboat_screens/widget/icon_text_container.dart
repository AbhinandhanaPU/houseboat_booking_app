import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class IconTextContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  const IconTextContainer({
    super.key,
    required this.icon,
    required this.text,
    this.width,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 85,
      height: height ?? 95,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.lightGrey,
          width: 0.3,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 3,
            spreadRadius: 0.5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.lightGrey,
          ),
          const SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
