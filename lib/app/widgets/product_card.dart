import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/widgets/custom_container.dart';

class ProductCard extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPlace;
  final int productPrice;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteToggle;
  final bool isSmallImage;

  const ProductCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPlace,
    required this.productPrice,
    required this.onTap,
    required this.onFavoriteToggle,
    this.isFavorite = false,
    this.isSmallImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomContainer(
        width: 300,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                productImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: isSmallImage ? 150 : 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            productPlace,
                            style: TextStyle(
                              color: AppColors.lightPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: onFavoriteToggle,
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? AppColors.lightPrimary : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: "Price from "),
                        TextSpan(
                          text: '₹$productPrice ',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(text: "1 Night, 2 Adults"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
