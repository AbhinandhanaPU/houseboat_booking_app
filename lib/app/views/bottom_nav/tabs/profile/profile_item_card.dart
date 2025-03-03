import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/widgets/custom_icon.dart';

class ProfileItemCard extends StatelessWidget {
  final String title;
  final dynamic leadingIcon;
  final dynamic trailingIcon;
  final Color iconColor;
  final Color textColor;
  final Function()? onTap;

  const ProfileItemCard({
    super.key,
    required this.title,
    this.leadingIcon,
    this.trailingIcon,
    this.iconColor = AppColors.lightGrey,
    this.textColor = AppColors.whiteColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.backgroundSecondary,
      margin: EdgeInsets.all(0),
      child: ListTile(
        leading: leadingIcon != null
            ? CustomIcon(
                icon: leadingIcon,
                size: 25,
                color: iconColor,
              )
            : SizedBox(),
        title: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
        trailing: trailingIcon != null
            ? CustomIcon(
                icon: trailingIcon,
                size: 18,
                color: iconColor,
              )
            : SizedBox(),
        onTap: onTap,
      ),
    );
  }
}
