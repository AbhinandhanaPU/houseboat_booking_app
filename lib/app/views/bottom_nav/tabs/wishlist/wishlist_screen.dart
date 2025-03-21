import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/wishlist_boats.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';
import 'package:houseboat_booking/app/widgets/product_card.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: false,
        showChat: true,
        showNotification: true,
        title: 'Wishlist',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 25,
          bottom: 5,
        ),
        child: ListView.separated(
          itemCount: wishListBoats.length,
          separatorBuilder: (context, index) => SizedBox(height: 15),
          itemBuilder: (context, index) {
            final wishlistItem = wishListBoats[index];
            return ProductCard(
              productImage: wishlistItem['productImage'],
              productName: wishlistItem['productName'],
              productPlace: wishlistItem['productPlace'],
              productPrice: wishlistItem['productPrice'],
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.houseBoatScreen);
              },
              isFavorite: true,
              onFavoriteToggle: () {},
            );
          },
        ),
      ),
    );
  }
}
