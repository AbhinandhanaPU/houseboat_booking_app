import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/profile_items.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/profile/profile_item_card.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: false,
        showChat: true,
        showNotification: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 5),
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
                itemCount: profileItems.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final profileItem = profileItems[index];
                  return ProfileItemCard(
                    title: profileItem["title"],
                    leadingIcon: profileItem["leading"],
                    trailingIcon: profileItem["trailing"],
                  );
                },
              ),
              ProfileItemCard(
                title: 'Logout',
                leadingIcon: Icons.power_settings_new,
                iconColor: AppColors.errorColor,
                textColor: AppColors.errorColor,
                onTap: () {
                  showLogoutDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Confirm Logout"),
      content: Text("Are you sure you want to logout?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutes.logIn);
          },
          child: Text("Logout"),
        ),
      ],
    ),
  );
}
