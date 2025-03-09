import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/booking_card.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of Maps for Each Booking
    final List<Map<String, dynamic>> bookings = [
      {
        'bookedOn': '11/11/2024',
        'bookingId': 'HBBA001',
        'houseboatName': 'Venice Houseboat',
        'details': [
          {'No. of Guests': '1 Adult'},
          {'Duration': '2 Nights'},
          {'Total Amount': '₹12,000'},
          {'Advance Amount': '₹10,000'},
          {'Balance Amount': '₹2,000'},
        ],
        'checkInDate': '12 Mar 2025',
        'checkInTime': '12:00 PM',
        'checkOutDate': '14 Mar 2025',
        'checkOutTime': '11:00 AM',
        'bookingStatus': 'Upcoming'
      },
      {
        'bookedOn': '05/10/2024',
        'bookingId': 'HBBA002',
        'houseboatName': 'Lakeview Houseboat',
        'details': [
          {'No. of Guests': '2 Adults'},
          {'Duration': '3 Nights'},
          {'Total Amount': '₹18,000'},
          {'Advance Amount': '₹15,000'},
          {'Balance Amount': '₹3,000'},
        ],
        'checkInDate': '15 Apr 2025',
        'checkInTime': '10:00 AM',
        'checkOutDate': '18 Apr 2025',
        'checkOutTime': '09:00 AM',
        'bookingStatus': 'Completed'
      },
      {
        'bookedOn': '02/08/2024',
        'bookingId': 'HBBA003',
        'houseboatName': 'Green Lake Houseboat',
        'details': [
          {'No. of Guests': '3 Adults'},
          {'Duration': '1 Night'},
          {'Total Amount': '₹25,000'},
          {'Advance Amount': '₹20,000'},
          {'Balance Amount': '₹5,000'},
        ],
        'checkInDate': '20 June 2025',
        'checkInTime': '11:30 AM',
        'checkOutDate': '21 June 2025',
        'checkOutTime': '10:00 AM',
        'bookingStatus': 'Cancelled'
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: ListView.separated(
        itemCount: bookings.length,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) {
          final booking = bookings[index];

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
            onCardTap: () {},
          );
        },
      ),
    );
  }
}
