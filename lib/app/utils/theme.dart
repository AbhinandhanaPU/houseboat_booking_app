import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.lightPrimary,
    scaffoldBackgroundColor: AppColors.backgroundPrimary,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundSecondary,
      foregroundColor: AppColors.whiteColor,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.whiteColor),
    ),
  );
}
