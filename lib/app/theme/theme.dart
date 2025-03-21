import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.lightPrimary,
    scaffoldBackgroundColor: AppColors.backgroundPrimary,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundSecondary,
      foregroundColor: AppColors.whiteColor,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size(110, 50)),
        shape: WidgetStatePropertyAll(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.whiteColor),
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.lightPrimary,
    ),
    cardTheme: CardTheme(
      color: AppColors.backgroundSecondary,
      elevation: 2,
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: AppColors.backgroundSecondary,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.backgroundSecondary,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      titleTextStyle: AppTextStyles.title,
      contentTextStyle: AppTextStyles.subtitle,
      elevation: 5,
      shadowColor: AppColors.lightGrey,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.backgroundSecondary,
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.lightGrey,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.lightGrey,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.lightPrimary,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.errorColor,
        ),
      ),
      hintStyle: TextStyle(
        color: AppColors.lightGrey,
      ),
      labelStyle: const TextStyle(
        color: AppColors.lightGrey,
      ),
    ),
    dividerTheme: DividerThemeData(color: AppColors.transparent),
  );
}
