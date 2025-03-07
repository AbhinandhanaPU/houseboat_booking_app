import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/home/home_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/profile/profile_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/search/search_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/wishlist/wishlist_screen.dart';

class HomeNavScreen extends StatefulWidget {
  const HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  var currentIndex = 0; // Track selected tab

  // List of screens corresponding to each navigation item
  List<Widget> tabWidgets = [
    HomeScreen(), // Screen 1 - Home Screen
    SearchScreen(), // Screen 2 - Search Screen
    Center(child: Text('Screen 3 - Booking history Screen')),
    WishlistScreen(), //  Screen 4 - Favorite/cart/WishList Screen
    ProfileScreen() // Screen 5 -  Profile Screen
  ];

  final List<IconData> navIcons = [
    Icons.home,
    Icons.search,
    Icons.event_available,
    Icons.favorite_border,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body content based on the selected tab - Displays the selected screen
      body: tabWidgets[currentIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: _buildBottonNavBar(),
    );
  }

  Widget _buildBottonNavBar() {
    return Container(
      height: 65,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      decoration: BoxDecoration(
        color: AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: AppColors.lightPrimary,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey.withAlpha(56),
            blurRadius: 5,
            spreadRadius: -5,
            offset: Offset(-5, 10),
          ),
          BoxShadow(
            color: AppColors.lightGrey.withAlpha(56),
            blurRadius: 5,
            spreadRadius: -5,
            offset: Offset(5, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navIcons.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = entry.key;
              });
            },
            child: currentIndex == entry.key
                ? _buildActiveNavItem(icon: entry.value)
                : Icon(
                    entry.value,
                    color: AppColors.lightPrimary,
                    size: 25,
                  ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildActiveNavItem({required IconData icon}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.backgroundPrimary,
            boxShadow: [
              BoxShadow(
                color: AppColors.lightGrey.withAlpha(56),
                blurRadius: 5,
                spreadRadius: -8,
                offset: Offset(-6, 10),
              ),
              BoxShadow(
                color: AppColors.lightGrey.withAlpha(56),
                blurRadius: 5,
                spreadRadius: -8,
                offset: Offset(6, 10),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: AppColors.lightPrimary,
            size: 28,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 6,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            color: AppColors.lightPrimary,
          ),
        )
      ],
    );
  }
}
