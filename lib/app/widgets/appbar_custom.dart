import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/notifications.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/widgets/icon_with_badge.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBackButton;
  final List<Widget>? actions;
  final Color backgroundColor;
  final double elevation;
  final PreferredSizeWidget? bottom;
  final bool showNotification;
  final bool showChat;

  const CustomAppBar({
    super.key,
    this.title,
    this.showBackButton = true,
    this.actions,
    this.backgroundColor = AppColors.transparent,
    this.elevation = 0.0,
    this.bottom,
    this.showNotification = false,
    this.showChat = false,
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
        showNotification
            ? IconWithBadge(
                icon: Icons.notifications,
                bardeColor: AppColors.errorColor,
                notificationCount: notifications.length,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.notification,
                  );
                },
              )
            : SizedBox.shrink(),
        showChat
            ? IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.bookingHome,
                    arguments: 2,
                  );
                },
                icon: Icon(Icons.chat_outlined),
              )
            : SizedBox.shrink(),
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
