import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class PaymentCard extends StatelessWidget {
  final String profilePicture;
  final String userName;
  final String date;
  final int paymentAmount;
  final VoidCallback onTap;

  const PaymentCard({
    super.key,
    required this.profilePicture,
    required this.userName,
    required this.date,
    required this.paymentAmount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 75,
        width: double.infinity,
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            foregroundImage: AssetImage(profilePicture),
          ),
          title: Text(
            userName,
            maxLines: 1,
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                date,
                style: TextStyle(color: AppColors.lightGrey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          trailing: Text(
            "₹$paymentAmount",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
