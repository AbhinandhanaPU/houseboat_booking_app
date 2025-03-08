import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/chat_home.dart';

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
            title: Text('History'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
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
            Center(child: Text("Bookings Screen")),
            Center(child: Text("Payment Screen")),

            // all chat list screen
            ChatHome(),
          ]),
        ),
      ),
    );
  }
}
