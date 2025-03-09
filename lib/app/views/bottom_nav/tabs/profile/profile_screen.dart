import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/profile/profile_item_card.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';

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
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.lightGrey,
                    width: 0.5,
                  ),
                ),
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 31,
                      backgroundColor: AppColors.lightGrey.withAlpha(128),
                      child: CircleAvatar(
                        radius: 30,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: AppColors.lightGrey,
                    ),
                  ],
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
