import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/houseboat_sections.dart';
import 'package:houseboat_booking/app/views/houseboat_screens/screens/houseboat_screen.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';
import 'package:houseboat_booking/app/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 5,
          bottom: 5,
        ),
        child: ListView.separated(
          itemCount: houseboatSections.length,
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemBuilder: (context, index) {
            final section = houseboatSections[index];
            final sectionTitle = section['sectionTitle'];
            final products = section['products'];

            return Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sectionTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 255,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 15),
                    itemBuilder: (context, productIndex) {
                      final product = products[productIndex];
                      return ProductCard(
                        productImage: product['productImage'],
                        productName: product['productName'],
                        productPlace: product['productPlace'],
                        productPrice: product['productPrice'],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HouseBoatScreen(),
                            ),
                          );
                        },
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
    );
  }
}
