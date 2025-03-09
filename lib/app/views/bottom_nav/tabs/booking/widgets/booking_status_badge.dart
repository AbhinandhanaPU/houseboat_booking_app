import 'package:flutter/material.dart';

class BookingStatusBadge extends StatelessWidget {
  final String bookingStatus;

  const BookingStatusBadge({
    super.key,
    required this.bookingStatus,
  });

  @override
  Widget build(BuildContext context) {
    Color badgeColor;
    String badgeText;
    Color textColor;

    // Handle Status Logic
    switch (bookingStatus) {
      case 'Completed':
        badgeColor = Colors.green.shade100;
        badgeText = '✅ Completed';
        textColor = Colors.green;
        break;
      case 'Ongoing':
        badgeColor = Colors.orange.shade100;
        badgeText = '🔥 Ongoing';
        textColor = Colors.orange;
        break;
      case 'Cancelled':
        badgeColor = Colors.red.shade100;
        badgeText = '❌ Cancelled';
        textColor = Colors.red;
        break;
      case 'Upcoming':
        badgeColor = Colors.blue.shade100;
        badgeText = '📅 Upcoming';
        textColor = Colors.blue;
        break;
      case 'Expired':
        badgeColor = Colors.grey.shade100;
        badgeText = '⏳ Expired';
        textColor = Colors.grey;
        break;
      default:
        badgeColor = Colors.grey.shade100;
        badgeText = '⌛ Pending';
        textColor = Colors.black;
    }

    // Return the Badge Widget
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: badgeColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        badgeText,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
