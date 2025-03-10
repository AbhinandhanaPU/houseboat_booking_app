import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/widgets/badge_indicator.dart';

class IconWithBadge extends StatelessWidget {
  final IconData icon;
  final int notificationCount;
  final Color bardeColor;
  final VoidCallback onTap;

  const IconWithBadge({
    super.key,
    required this.icon,
    required this.notificationCount,
    required this.bardeColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            size: 28,
          ),
        ),
        if (notificationCount > 0)
          Positioned(
            right: 5,
            top: 5,
            child: BadgeIndicator(
              count: notificationCount,
              color: bardeColor,
            ),
          ),
      ],
    );
  }
}
