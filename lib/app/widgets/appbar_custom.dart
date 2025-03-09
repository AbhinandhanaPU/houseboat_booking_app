import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/notifications/notifications.dart';
import 'package:houseboat_booking/app/widgets/notification_badge_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBackButton;
  final List<Widget>? actions;
  final Color backgroundColor;
  final double elevation;
  final PreferredSizeWidget? bottom;

  const CustomAppBar({
    super.key,
    this.title,
    this.showBackButton = true,
    this.actions,
    this.backgroundColor = AppColors.transparent,
    this.elevation = 0.0,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      forceMaterialTransparency: true,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            )
          : null,
      title: Text(
        title != null ? title! : 'App Name',
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),

      actions: [
        NotificationBadge(
          notificationCount: 6,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ));
          },
        ),
        if (actions != null) ...actions!,
        SizedBox(width: 15),
      ],
      bottom: bottom, // Optional TabBar if provided
    );
  }

  @override
  Size get preferredSize => bottom != null
      ? const Size.fromHeight(100)
      : const Size.fromHeight(kToolbarHeight);
}
