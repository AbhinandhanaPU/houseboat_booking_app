import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/widgets/product_card.dart';

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
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 25,
            bottom: 5,
          ),
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
                        return ProductCard(
                          productImage: 'assets/images/houseboat1.jpg',
                          productName: 'Venice Houseboat',
                          productPlace: 'Alleppey',
                          productPrice: 8000,
                          onTap: () {},
                          onFavoriteToggle: () {},
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
