import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/bookings/booking_history.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/chat/chat_home.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/payment/payment_history.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';

class BookingHomeScreen extends StatefulWidget {
  final int initialTabIndex; // Accept initial tab index

  const BookingHomeScreen({
    super.key,
    this.initialTabIndex = 0,
  });

  @override
  State<BookingHomeScreen> createState() => _BookingHomeScreenState();
}

class _BookingHomeScreenState extends State<BookingHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3, // Number of TabBar items
      vsync: this,
      initialIndex: widget.initialTabIndex, // Set initial tab index
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          showBackButton: false,
          showNotification: true,
          title: 'Booking History',
          bottom: TabBar(
            controller: _tabController,
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
        body: TabBarView(
          controller: _tabController,
          children: [
            // Bookings Screen
            BookingHistoryScreen(),

            // Payment History Screen
            PaymentHistory(),

            // all chat list screen
            ChatHome(),
          ],
        ),
      ),
    );
  }
}
