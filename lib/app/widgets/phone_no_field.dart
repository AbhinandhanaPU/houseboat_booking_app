import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final FutureOr<String?> Function(PhoneNumber?)? validator;

  const PhoneNumberField({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      validator: validator,
      decoration: const InputDecoration(
        hintText: "Phone Number",
      ),
      initialCountryCode: 'IN',
      onChanged: (phone) {
        log(phone.completeNumber);
      },
    );
  }
}
