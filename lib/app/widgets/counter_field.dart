import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class CounterField extends StatelessWidget {
  final int countValue;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterField({
    super.key,
    required this.countValue,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(5),
        color: AppColors.backgroundSecondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onDecrement,
            icon: const Icon(
              Icons.remove,
              size: 25,
            ),
          ),
          Text(
            countValue.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ),
          IconButton(
            onPressed: onIncrement,
            icon: const Icon(
              Icons.add,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
