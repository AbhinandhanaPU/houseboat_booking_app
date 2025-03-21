import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/booking_details_section.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/booking_status_badge.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/check_inout_widget.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/custom_divider.dart';
import 'package:houseboat_booking/app/widgets/custom_tables.dart';
import 'package:houseboat_booking/app/widgets/keyvalue_row_widget.dart';
import 'package:houseboat_booking/app/widgets/outlined_button.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            spacing: 15,
            children: [
              Expanded(
                child: CustomcoloredButton(
                  text: 'Reschedule',
                  height: 50,
                  width: double.infinity,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: CustomOutlinedButton(
                  text: 'Cancel Booking',
                  height: 50,
                  width: double.infinity,
                  onTap: () {},
                ),
              ),
            ],
          ),
        )
      ],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  header with houseboat image ,booking id, date and status
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Houseboat main Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/houseboat1.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KeyValueRow(
                          keyText: 'Booked On',
                          valueText: '11/11/1012',
                          textSize: 16,
                          textColor: AppColors.lightPrimary,
                        ),
                        KeyValueRow(
                          keyText: 'Booked 1D',
                          valueText: '11/11/1012',
                          textSize: 16,
                          textColor: AppColors.lightPrimary,
                        ),
                        BookingStatusBadge(bookingStatus: 'bookingStatus'),
                      ],
                    ),
                  ),
                ],
              ),
              CustomDivider(),
              // Booking Major Details section
              BookingDetailsSection(
                title: 'Booking Details',
                details: [
                  {'key': 'Duration', 'value': '2 Nights'},
                  {'key': 'Departure Location', 'value': 'Alleppey, Kerala'},
                  {'key': 'Destination', 'value': 'Round Trip'},
                ],
                footer: CheckInOutWidget(
                  checkInDate: '2025-04-15',
                  checkInTime: '12:00 PM',
                  checkOutDate: '2025-04-17',
                  checkOutTime: '10:00 AM',
                ),
              ),
              CustomDivider(),

              //Houseboat details
              BookingDetailsSection(
                title: 'Houseboat Info',
                subtitle: 'venice Houseboat Luxury',
                actionText: 'View Houseboat',
                onActionPressed: () {
                  Navigator.pushNamed(context, AppRoutes.houseBoatScreen);
                },
                details: [
                  {'key': 'Type', 'value': 'Premium'},
                  {'key': 'Bedrooms', 'value': '3'},
                  {'key': 'Max Guests', 'value': '8'},
                ],
              ),
              CustomDivider(),

              // Guest Details Section
              BookingDetailsSection(
                title: 'Guest Details',
                details: [
                  {'key': 'Primary Guest', 'value': 'Abhinandhana'},
                  {'key': 'Email Address', 'value': 'Abhinandhana@gmailcom'},
                  {'key': 'Phone Number', 'value': '+91 1234567890'},
                  {'key': 'Country', 'value': 'India'},
                  {'key': 'Guests', 'value': '4 Adults, 1 Child'},
                ],
              ),
              PaymentDetailsTable(
                headeing: "Payment Info",
                details: [
                  {"key": "GST (5%)", "value": "₹700"},
                  {"key": "Total", "value": "₹14,700"},
                  {"key": "Advance Paid", "value": "₹6,762"},
                  {"key": "Balance Payment", "value": "₹7,938"},
                  {"key": "Payment Mode", "value": "upi"},
                ],
                onIconPressed: () {},
              ),
              // Extra Service Details Section
              BookingDetailsSection(
                title: 'Extras & Add-ons',
                actionText: 'Add Services',
                onActionPressed: () {},
                details: [
                  {'key': 'Meal Plan', 'value': 'Kerala Cuisine'},
                  {'key': 'Activities', 'value': 'No activities booked'},
                  {'key': 'Add-ons', 'value': 'No Add-ons'},
                ],
              ),
              CustomDivider(),

              // Support & Cancellation Section
              BookingDetailsSection(
                title: 'Support & Cancellation',
                actionText: 'Message',
                onActionPressed: () {},
                details: [
                  {
                    'key': 'Cancellation Policy',
                    'value': 'Free cancellation before 24 hrs'
                  },
                  {'key': ' Customer Support', 'value': '+91 98765 43210'},
                ],
              ),
              CustomDivider(
                height: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
