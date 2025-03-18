import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';
import 'package:houseboat_booking/app/utils/picker_utils.dart';
import 'package:houseboat_booking/app/utils/validations.dart';
import 'package:houseboat_booking/app/widgets/appbar_custom.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/custom_container.dart';
import 'package:houseboat_booking/app/widgets/custom_textfield_with_label.dart';
import 'package:houseboat_booking/app/widgets/id_proof_picker.dart';
import 'package:houseboat_booking/app/widgets/phone_no_field.dart';
import 'package:houseboat_booking/app/widgets/radio_button_list.dart';

class GuestDetailsScreen extends StatelessWidget {
  const GuestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showNotification: false,
        title: 'Guest Details',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextfieldWithLabel(
                text: 'Name',
                hintText: 'Primary Guest Name',
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: Validations.validateName,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextfieldWithLabel(
                text: 'Email Address',
                hintText: 'e.g. name@gmail.com',
                helperText: 'Confirmation email goes to this address',
                keyboardType: TextInputType.emailAddress,
                controller: TextEditingController(),
                validator: Validations.validateEmail,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    ' *',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.errorColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              PhoneNumberField(
                controller: TextEditingController(),
                validator: Validations.validatePhoneNumber,
              ),
              UploadIDProofWidget(
                title: 'Upload ID Proof',
                helperText: 'This is needed for check-in time verification',
                onFileUpload: () async {
                  final filepath = await PickerUtils.pickFile();
                  log(filepath.toString());
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomContainer(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who are you booking for?',
                      style: AppTextStyles.title,
                    ),
                    RadioButtonList(
                      options: [
                        'I am the main guest',
                        'Booking for someone else'
                      ],
                      selectedValue: 'I am the main guest',
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
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
              Navigator.pushNamed(context, AppRoutes.priceConfirmationScreen);
            },
          ),
        )
      ],
    );
  }
}
