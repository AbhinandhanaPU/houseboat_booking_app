import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/widgets/product_card.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

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
            itemCount: 3,
            separatorBuilder: (context, index) => SizedBox(height: 15),
            itemBuilder: (context, index) {
              return ProductCard(
                productImage: 'assets/images/houseboat1.jpg',
                productName: 'Venice Houseboat',
                productPlace: 'Alleppey',
                productPrice: 8000,
                onTap: () {},
                isFavorite: true,
                onFavoriteToggle: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
