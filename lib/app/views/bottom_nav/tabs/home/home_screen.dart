import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> sectionTitles = [
    'Hot Deals',
    'Luxury Houseboats',
    'Budget-Friendly Stays'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: ListView.separated(
            itemCount: sectionTitles.length,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemBuilder: (context, sectionIndex) {
              return Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sectionTitles[sectionIndex],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 255,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 15),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.backgroundSecondary,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/houseboat1.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Venice Houseboat',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(height: 3),
                                    const Text(
                                      'Alleppey',
                                      style: TextStyle(
                                        color: AppColors.lightPrimary,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            const TextSpan(
                                              text: "Price from ",
                                            ),
                                            TextSpan(
                                              text: '₹8000 ',
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const TextSpan(
                                              text: "1 Night, 2 Adults",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
