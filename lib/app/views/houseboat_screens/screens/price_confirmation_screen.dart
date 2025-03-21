import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/booking_details_section.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/check_inout_widget.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/custom_container.dart';
import 'package:houseboat_booking/app/widgets/custom_tables.dart';

class PriceConfirmationScreen extends StatelessWidget {
  const PriceConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Confirm & Pay',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            spacing: 15,
            children: [
              // Booking Major Details section
              CustomContainer(
                padding: const EdgeInsets.all(10),
                child: BookingDetailsSection(
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
              ),

              // Guest Details Section
              CustomContainer(
                padding: const EdgeInsets.all(10),
                child: BookingDetailsSection(
                  title: 'Guest Details',
                  details: [
                    {'key': 'Primary Guest', 'value': 'Abhinandhana'},
                    {'key': 'Email Address', 'value': 'Abhinandhana@gmail.com'},
                    {'key': 'Phone Number', 'value': '+91 1234567890'},
                    {'key': 'Country', 'value': 'India'},
                    {'key': 'Guests', 'value': '4 Adults, 1 Child'},
                  ],
                ),
              ),
              PaymentDetailsTable(
                headeing: "Payment Info",
                details: [
                  {"key": "GST (5%)", "value": "₹700"},
                  {"key": "Total", "value": "₹14,700"},
                  {"key": "Advance Payment", "value": "₹6,762"},
                  {"key": "Balance Payment", "value": "₹7,938"},
                  {"key": "Payment Mode", "value": "upi"},
                ],
                onIconPressed: () {},
              ),

              // Extra Service Details Section
              CustomContainer(
                padding: const EdgeInsets.all(10),
                child: BookingDetailsSection(
                  title: 'Extras & Add-ons',
                  actionText: 'Add Services',
                  onActionPressed: () {},
                  details: [
                    {'key': 'Meal Plan', 'value': 'Kerala Cuisine'},
                    {'key': 'Activities', 'value': 'No activities booked'},
                    {'key': 'Add-ons', 'value': 'No Add-ons'},
                  ],
                ),
              ),

              // Support & Cancellation Section
              CustomContainer(
                padding: const EdgeInsets.all(10),
                child: BookingDetailsSection(
                  title: 'Support & Cancellation',
                  details: [
                    {
                      'key': 'Cancellation Policy',
                      'value': 'Free cancellation before 24 hrs'
                    },
                    {'key': ' Customer Support', 'value': '+91 98765 43210'},
                  ],
                ),
              ),
              CustomContainer(
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Payement schedule',
                      style: AppTextStyles.title,
                    ),
                    Text(
                      '''No full payment today,  Only advance payment. You'll pay balance amount when you stay.''',
                      style: AppTextStyles.body.copyWith(
                        color: AppColors.successColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        checkColor: AppColors.whiteColor,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'I agree to the terms and conditions of the booking.',
                          maxLines: 2,
                          style: AppTextStyles.body,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomcoloredButton(
                    width: double.infinity,
                    text: 'Confirm & Pay',
                    height: 50,
                    onTap: isChecked
                        ? () {
                            // Proceed with payment
                          }
                        : () {},
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
