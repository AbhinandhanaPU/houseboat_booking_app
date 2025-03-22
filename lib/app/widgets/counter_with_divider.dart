import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';

class CounterFieldWithDivider extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterFieldWithDivider({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey, width: 0.5),
        borderRadius: BorderRadius.circular(40),
        color: AppColors.backgroundPrimary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: onDecrement,
            icon: const Icon(
              Icons.remove,
              size: 25,
              color: AppColors.lightGrey,
            ),
          ),
          VerticalDivider(
            color: AppColors.lightGrey,
            endIndent: 12,
            indent: 12,
            width: 2,
          ),
          IconButton(
            onPressed: onIncrement,
            icon: const Icon(
              Icons.add,
              size: 25,
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
