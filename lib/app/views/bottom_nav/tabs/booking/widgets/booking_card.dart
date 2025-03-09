import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/booking_status_badge.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/check_inout_widget.dart';
import 'package:houseboat_booking/app/widgets/keyvalue_row_widget.dart';

class BookingCard extends StatelessWidget {
  final String bookedOn;
  final String bookingId;
  final String houseboatName;
  final String checkInDate;
  final String checkInTime;
  final String checkOutDate;
  final String checkOutTime;
  final List<Map<String, String>> details;
  final VoidCallback onCardTap;
  final String bookingStatus;

  const BookingCard({
    super.key,
    required this.bookedOn,
    required this.bookingId,
    required this.houseboatName,
    required this.checkInDate,
    required this.checkInTime,
    required this.checkOutDate,
    required this.checkOutTime,
    required this.details,
    required this.onCardTap,
    required this.bookingStatus,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.backgroundSecondary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.lightGrey,
            width: 0.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Booking ID and Date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Booked On: $bookedOn',
                  style: const TextStyle(
                    color: AppColors.lightPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Booking ID: $bookingId',
                  style: const TextStyle(
                    color: AppColors.lightPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Houseboat Image + Name
            Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    houseboatName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                BookingStatusBadge(bookingStatus: bookingStatus),
              ],
            ),
            const SizedBox(height: 12),

            // Booking Details
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: details.length,
              itemBuilder: (context, i) {
                final item = details[i];
                final keyText = item.keys.first;
                final valueText = item.values.first;

                return KeyValueRow(
                  keyText: keyText,
                  valueText: valueText,
                );
              },
            ),
            const SizedBox(height: 12),

            // Check-In / Check-Out Details
            CheckInOutWidget(
              checkInDate: checkInDate,
              checkInTime: checkInTime,
              checkOutDate: checkOutDate,
              checkOutTime: checkOutTime,
            ),
          ],
        ),
      ),
    );
  }
}
