import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/payment_card.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return PaymentCard(
            profilePicture: 'assets/images/houseboat1.jpg',
            userName: 'Venice Houseboats',
            date: '11/12/2025',
            paymentAmount: 8000,
            onTap: () {},
          );
        },
      ),
    );
  }
}
