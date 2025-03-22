import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';
import 'package:houseboat_booking/app/utils/constants.dart';
import 'package:houseboat_booking/app/utils/picker_utils.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/counter_with_divider.dart';
import 'package:houseboat_booking/app/widgets/custom_textfield_without_label.dart';

class PackageDetailsScreeen extends StatelessWidget {
  const PackageDetailsScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Package Details',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Venice Houseboats',
                style: AppTextStyles.heading,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundSecondary,
                  border: Border.all(color: AppColors.lightPrimary),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Theme(
                      data: ThemeData(
                        colorScheme: ColorScheme.dark(),
                        inputDecorationTheme: InputDecorationTheme(
                          hintStyle: AppTextStyles.body,
                          contentPadding: EdgeInsets.only(left: 25),
                          prefixIconColor: AppColors.lightGrey,
                          suffixIconColor: AppColors.lightGrey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.lightGrey,
                              width: 0.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.lightGrey,
                              width: 0.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.lightGrey,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Column(
                          spacing: 5,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adults (12+ years old)',
                              style: AppTextStyles.boldBody,
                            ),
                            TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                hintText: '2',
                                suffixIcon: CounterFieldWithDivider(
                                  onIncrement: () {},
                                  onDecrement: () {},
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Child (5 - 12 Year old)',
                              style: AppTextStyles.boldBody,
                            ),
                            TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: '0',
                                hintStyle: AppTextStyles.body,
                                suffixIcon: CounterFieldWithDivider(
                                  onIncrement: () {},
                                  onDecrement: () {},
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              ' Check - In Date',
                              style: AppTextStyles.boldBody,
                            ),
                            CustomTextfieldWithoutLabel(
                              hintText: '01/02/2025',
                              prefixIcon: Icon(Icons.calendar_month),
                              readOnly: true,
                              controller: TextEditingController(),
                              onTap: () async {
                                final checkInDate =
                                    await PickerUtils.pickDate(context);
                                log(checkInDate.toString());
                              },
                            ),
                            SizedBox(height: 10),
                            Text(
                              ' Check - Out Date',
                              style: AppTextStyles.boldBody,
                            ),
                            CustomTextfieldWithoutLabel(
                              hintText: '',
                              prefixIcon: Icon(Icons.calendar_month),
                              readOnly: true,
                              controller: TextEditingController(),
                            ),
                            Text(
                              'Select a check-out date from the calender below to view priced for that specific day',
                              style: AppTextStyles.body.copyWith(
                                color: AppColors.lightPrimary,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              spacing: 10,
                              children: [
                                _buildColorTextContainer(
                                  text: 'Available Dates',
                                  color: AppColors.successColor,
                                ),
                                _buildColorTextContainer(
                                  text: 'Selected Dates',
                                  color: AppColors.darkPrimary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: AppColors.lightPrimary,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${AppConstants.currencySymbol}80,000',
                              style: AppTextStyles.title,
                            ),
                            Text(
                              '(GST inlcuded)',
                              style: AppTextStyles.body,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomcoloredButton(
            text: 'Continue',
            height: 50,
            width: double.infinity,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.guestDetails);
            },
          ),
        )
      ],
    );
  }
}

Widget _buildColorTextContainer({required String text, required Color color}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      border: Border.all(
        color: AppColors.lightGrey,
      ),
    ),
    child: Row(
      children: [
        Container(
          height: 15,
          width: 15,
          color: color,
        ),
        SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    ),
  );
}
