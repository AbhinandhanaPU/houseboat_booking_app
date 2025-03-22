import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/utils/picker_utils.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/counter_field.dart';
import 'package:houseboat_booking/app/widgets/custom_textfield_without_label.dart';
import 'package:houseboat_booking/app/widgets/outlined_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController guestController = TextEditingController();

  int adultsCount = 2;
  int childCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: false,
        showChat: true,
        showNotification: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          spacing: 15,
          children: [
            CustomTextfieldWithoutLabel(
              hintText: 'Location',
              prefixIcon: const Icon(Icons.location_on_outlined),
              controller: TextEditingController(),
            ),
            CustomTextfieldWithoutLabel(
              hintText: 'Check-In Date',
              prefixIcon: const Icon(Icons.calendar_month_outlined),
              controller: TextEditingController(),
              readOnly: true,
              onTap: () async {
                final date = await PickerUtils.pickDate(context);
                log(date.toString());
              },
            ),
            CustomTextfieldWithoutLabel(
              hintText: '2 Adults - 0 Child',
              prefixIcon: const Icon(Icons.group_outlined),
              controller: guestController,
              readOnly: true,
              onTap: () => _showGuestSelectionDialog(),
            ),
            CustomcoloredButton(
              text: 'SEARCH',
              height: 50,
              width: double.infinity,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.searchListScreen,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showGuestSelectionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              backgroundColor: AppColors.backgroundSecondary,
              shape: const BeveledRectangleBorder(),
              content: Column(
                spacing: 10,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Adults',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CounterFieldWithValue(
                        countValue: adultsCount,
                        onIncrement: () {
                          setStateDialog(() {
                            adultsCount++;
                          });
                        },
                        onDecrement: () {
                          if (adultsCount > 1) {
                            setStateDialog(() {
                              adultsCount--;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  Row(
                    spacing: 50,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Children',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CounterFieldWithValue(
                        countValue: childCount,
                        onIncrement: () {
                          setStateDialog(() {
                            childCount++;
                          });
                        },
                        onDecrement: () {
                          if (childCount > 0) {
                            setStateDialog(() {
                              childCount--;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                CustomOutlinedButton(
                  text: 'Done',
                  height: 50,
                  width: double.infinity,
                  onTap: () {
                    setState(() {
                      guestController.text =
                          '$adultsCount Adults - $childCount Child';
                    });
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
