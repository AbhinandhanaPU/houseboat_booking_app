import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/payment_history.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/payment_card.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: paymentList.length,
        itemBuilder: (context, index) {
          final payment = paymentList[index];
          return PaymentCard(
            profilePicture: payment['profilePicture'],
            userName: payment['userName'],
            date: payment['date'],
            paymentAmount: payment['paymentAmount'],
            onTap: () {},
          );
        },
      ),
    );
  }
}
