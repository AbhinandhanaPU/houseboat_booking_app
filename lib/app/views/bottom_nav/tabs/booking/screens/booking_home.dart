import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/booking_history.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/chat_home.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/payment_history.dart';

class BookingHomeScreen extends StatelessWidget {
  const BookingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'App Name',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined),
              ),
            ],
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
      ),
    );
  }
}
