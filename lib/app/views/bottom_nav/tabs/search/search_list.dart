import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/wishlist_boats.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';
import 'package:houseboat_booking/app/widgets/product_card.dart';

class SearchListScreen extends StatelessWidget {
  const SearchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showNotification: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
              isFavorite: false,
              onFavoriteToggle: () {},
            );
          },
        ),
      ),
    );
  }
}
