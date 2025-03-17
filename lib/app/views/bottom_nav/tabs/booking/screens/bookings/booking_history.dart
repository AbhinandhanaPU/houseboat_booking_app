import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/booking_data.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/bookings/booking_details.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/booking_card.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: ListView.separated(
        itemCount: bookingList.length,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) {
          final booking = bookingList[index];

          return BookingCard(
            bookedOn: booking['bookedOn'],
            bookingId: booking['bookingId'],
            houseboatName: booking['houseboatName'],
            details: booking['details'],
            checkInDate: booking['checkInDate'],
            checkInTime: booking['checkInTime'],
            checkOutDate: booking['checkOutDate'],
            checkOutTime: booking['checkOutTime'],
            bookingStatus: booking['bookingStatus'],
            onCardTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookingDetailsScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
