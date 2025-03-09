import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class CheckInOutWidget extends StatelessWidget {
  final String checkInDate;
  final String checkInTime;
  final String checkOutDate;
  final String checkOutTime;
  final bool showDivider;

  const CheckInOutWidget({
    super.key,
    required this.checkInDate,
    required this.checkInTime,
    required this.checkOutDate,
    required this.checkOutTime,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Check-In Section
        _buildCheckInOutSection(
          title: 'Check-In',
          date: checkInDate,
          time: checkInTime,
          alignment: CrossAxisAlignment.start,
        ),

        // Optional Divider (Circle Avatar)
        if (showDivider)
          const CircleAvatar(
            radius: 10,
            backgroundColor: AppColors.lightPrimary,
            foregroundColor: AppColors.whiteColor,
            child: Text(
              'To',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        // Check-Out Section
        _buildCheckInOutSection(
          title: 'Check-Out',
          date: checkOutDate,
          time: checkOutTime,
          alignment: CrossAxisAlignment.end,
        ),
      ],
    );
  }

  // Reusable Function to Build Check-In/Check-Out Section
  Widget _buildCheckInOutSection({
    required String title,
    required String date,
    required String time,
    required CrossAxisAlignment alignment,
  }) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "$date ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: time,
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.lightGrey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
