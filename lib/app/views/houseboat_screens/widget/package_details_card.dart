import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';

class PackageDetailsCard extends StatelessWidget {
  final String packageName;
  final String price;
  final String additionalInfo;

  const PackageDetailsCard({
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
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Price Starting',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16,
                  ),
                ),
                Text.rich(
                  textAlign: TextAlign.left,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '₹$price\n',
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppColors.lightPrimary,
                          fontWeight: FontWeight.bold,
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
