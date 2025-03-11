import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/houseboat_screens/package_details_card.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/icon_text_widget.dart';
import 'package:houseboat_booking/app/widgets/readmore_text_widget.dart';

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
              size: 22,
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
                size: 22,
                color: AppColors.whiteColor,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomcoloredButton(
            text: 'Book Now',
            height: 50,
            width: double.infinity,
            onTap: () {},
          ),
        )
      ],
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
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextWidget(
                      icon: Icons.location_on_outlined,
                      text: 'Alappuzha, Kerala',
                      textWeight: FontWeight.bold,
                      iconColor: AppColors.lightPrimary,
                      textColor: AppColors.lightPrimary,
                    ),
                    IconTextWidget(
                      icon: Icons.star_border,
                      text: '4.5 (1.2K Review)',
                      iconColor: AppColors.lightGrey,
                      textColor: AppColors.lightGrey,
                    ),
                  ],
                ),
                Divider(
                  color: AppColors.lightGrey.withAlpha(128),
                ),
                ReadMoreText(
                  text:
                      'A traditional houseboat with modern comforts, surreal lake views, well-appointed rooms, an exclusive spa, and fun outdoor activities. ',
                ),
                PackageDetailsCard(
                  packageName: 'Room with Breakfast + Lunch + Dinner',
                  price: '8000',
                  additionalInfo: '+ taxes and fees / night',
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 5,
                  children: List.generate(2, (index) {
                    return IconTextWidget(
                      icon: Icons.check,
                      iconColor: AppColors.successColor,
                      text: 'Free Cancellation available at extra charges',
                      textColor: AppColors.successColor,
                    );
                  }),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
