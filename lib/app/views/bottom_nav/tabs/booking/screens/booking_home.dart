import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/bookings/booking_history.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/chat/chat_home.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/payment/payment_history.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';

class BookingHomeScreen extends StatelessWidget {
  const BookingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          showBackButton: false,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Bookings'),
              Tab(text: 'Payments'),
              Tab(text: 'Chats'),
            ],
            labelColor: AppColors.lightPrimary,
            indicatorColor: AppColors.lightPrimary,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: TabBarView(children: [
          // Bookings Screen
          BookingHistoryScreen(),

          // Payment History Screen
          PaymentHistory(),

          // all chat list screen
          ChatHome(),
        ]),
      ),
    );
  }
}
