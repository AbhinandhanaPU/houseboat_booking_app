import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';
import 'package:houseboat_booking/app/widgets/keyvalue_row_widget.dart';
import 'package:houseboat_booking/app/widgets/text_button.dart';

class BookingDetailsSection extends StatelessWidget {
  final String title;
  final String? subtitle;
  final List<Map<String, String>> details;
  final Widget? footer;
  final VoidCallback? onActionPressed;
  final String actionText;

  const BookingDetailsSection({
    super.key,
    required this.title,
    this.subtitle,
    this.details = const [],
    this.footer,
    this.onActionPressed,
    this.actionText = "View Details", // Default text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title & Action Button
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.heading,
                  ),
                  if (subtitle != null) // Show subtitle only if provided
                    Text(
                      subtitle!,
                      style: AppTextStyles.subtitle,
                    ),
                ],
              ),
              if (onActionPressed != null)
                CustomTextButton(
                  onPressed: onActionPressed!,
                  text: actionText,
                ),
            ],
          ),

          const SizedBox(height: 8),

          // Dynamic Booking Information
          ...details.map((detail) => KeyValueRow(
                keyText: detail['key']!,
                valueText: detail['value']!,
                textSize: 16,
              )),

          const SizedBox(height: 5),

          // Footer widget if provided
          if (footer != null) footer!,
        ],
      ),
    );
  }
}
