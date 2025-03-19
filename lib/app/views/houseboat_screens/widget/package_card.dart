import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class PackageCard extends StatelessWidget {
  final String packageName;
  final String price;
  final String additionalInfo;

  const PackageCard({
    super.key,
    required this.packageName,
    required this.price,
    required this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              packageName,
              style: AppTextStyles.boldBody.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Price Starting', style: AppTextStyles.boldBody),
                Text.rich(
                  textAlign: TextAlign.left,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '₹$price\n',
                        style: AppTextStyles.title.copyWith(
                          color: AppColors.lightPrimary,
                        ),
                      ),
                      TextSpan(
                        text: additionalInfo,
                        style: const TextStyle(
                          fontSize: 13,
                          color: AppColors.lightGrey,
                        ),
                      ),
                    ],
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
