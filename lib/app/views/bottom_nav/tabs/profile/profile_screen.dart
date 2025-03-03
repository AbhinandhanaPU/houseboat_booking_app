import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/profile/profile_item_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, dynamic>> items = [
    {
      "title": "Personal Info",
      "leading": Icons.person,
      "trailing": Icons.arrow_forward_ios,
      // "destination": SettingsScreen(),
    },
    {
      "title": "Payment Settings",
      "leading":
          'assets/icons/credit_card_gear_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
      "trailing": Icons.arrow_forward_ios,
      // "destination": NotificationsScreen(),
    },
    {
      "title": "Booking & Cancellation Policies",
      "leading":
          'assets/icons/lab_profile_24dp_E8EAED_FILL0_wght0_GRAD0_opsz24.svg',
      "trailing": Icons.arrow_forward_ios,
      // "destination": HelpScreen(),
    },
    {
      "title": "Security & Account Settings",
      "leading":
          'assets/icons/lab_profile_24dp_E8EAED_FILL0_wght0_GRAD0_opsz24.svg',
      "trailing": Icons.arrow_forward_ios,
      // "destination": HelpScreen(),
    },
    {
      "title": "Notifications",
      "leading": Icons.notifications_active_outlined,
      "trailing": Icons.arrow_forward_ios,
      // "destination": NotificationsScreen(),
    },
    {
      "title": "Support & Policies",
      "leading": Icons.live_help_outlined,
      "trailing": Icons.arrow_forward_ios,
      // "destination": HelpScreen(),
    },
    {
      "title": "How to Book",
      "leading": Icons.event_available_outlined,
      "trailing": Icons.arrow_forward_ios,
      // "destination": HelpScreen(),
    },
    {
      "title": "Invite a friend",
      "leading": Icons.share,
      "trailing": Icons.arrow_forward_ios,
      // "destination": HelpScreen(),
    },
    {
      "title": "App Info",
      "leading": Icons.info_outline,
      "trailing": Icons.arrow_forward_ios,
      // "destination": HelpScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            spacing: 10,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 51,
                backgroundColor: AppColors.lightGrey.withAlpha(128),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.backgroundSecondary,
                  foregroundColor: AppColors.whiteColor,
                  child: const Text(
                    "FN",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Full Name
              const Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Expanded(
                child: ListView.separated(
                  itemCount: items.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return ProfileItemCard(
                      title: items[index]["title"],
                      leadingIcon: items[index]["leading"],
                      trailingIcon: items[index]["trailing"],
                    );
                  },
                ),
              ),
              ProfileItemCard(
                title: 'Logout',
                leadingIcon: Icons.power_settings_new,
                iconColor: AppColors.errorColor,
                textColor: AppColors.errorColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
