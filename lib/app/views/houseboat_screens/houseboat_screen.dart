import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class HouseBoatScreen extends StatelessWidget {
  const HouseBoatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: CircleAvatar(
            backgroundColor: AppColors.backgroundPrimary,
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: AppColors.backgroundPrimary,
              child: const Icon(
                Icons.chat,
                color: AppColors.whiteColor,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              // Background Image
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/houseboat1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.transparent,
                        AppColors.backgroundPrimary.withAlpha(200),
                        AppColors.backgroundPrimary.withAlpha(250),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Venice Houseboats',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 28,
                          color: AppColors.lightPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Alappuzha, Kerala',
                      style: TextStyle(
                        color: AppColors.lightPrimary,
                      ),
                    ),
                    Text('4.9(1.2K Review)',style: TextStyle(),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
