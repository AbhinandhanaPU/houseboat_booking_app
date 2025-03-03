import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/picker_utils.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/custom_textfield_without_label.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            spacing: 15,
            children: [
              CustomTextfieldWithoutLabel(
                hintText: 'location',
                prefixIcon: Icon(Icons.location_on_outlined),
                controller: TextEditingController(),
              ),
              CustomTextfieldWithoutLabel(
                hintText: 'Check-In date',
                prefixIcon: Icon(Icons.calendar_month_outlined),
                controller: TextEditingController(),
                onTap: () {
                  final date = PickerUtils.pickDate(context);
                  log(date.toString());
                },
              ),
              CustomTextfieldWithoutLabel(
                hintText: '2 Adults - 1 Child',
                prefixIcon: Icon(Icons.group_outlined),
                controller: TextEditingController(),
                onTap: () {},
              ),
              CustomcoloredButton(
                text: 'SEARCH',
                height: 50,
                width: double.infinity,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
