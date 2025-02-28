import 'dart:async';

import 'package:intl_phone_field/phone_number.dart';

class Validations {
  /// Validates if the given string is a valid email.
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    final RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
        caseSensitive: false);
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  /// Validates if the given string is a strong password.
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  /// Validates if the given string is a valid phone number.
  static FutureOr<String?> validatePhoneNumber(PhoneNumber? phone) {
    if (phone == null || phone.number.isEmpty) {
      return "Phone number cannot be empty";
    }
    final RegExp phoneRegex = RegExp(r"^[0-9]{10,12}$");
    if (!phoneRegex.hasMatch(phone.number)) {
      return "Enter a valid phone number";
    }
    return null;
  }

  /// Validates if the given string is a valid name.
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
    final RegExp nameRegex = RegExp(r"^[a-zA-Z\s]+$");
    if (!nameRegex.hasMatch(value)) {
      return 'Enter a valid name';
    }
    return null;
  }

  /// Validates if the given string is a valid number.
  static String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Number cannot be empty';
    }
    final RegExp numberRegex = RegExp(r"^\d+$");
    if (!numberRegex.hasMatch(value)) {
      return 'Enter a valid number';
    }
    return null;
  }

  /// Validates if the given value is not empty.
  static String? validateRequiredField(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field cannot be empty';
    }
    return null;
  }

  /// Validates if the given string has a minimum length.
  static String? validateMinLength(String? value, int minLength) {
    if (value == null || value.length < minLength) {
      return 'Must be at least $minLength characters long';
    }
    return null;
  }

  /// Validates if the given string has a maximum length.
  static String? validateMaxLength(String? value, int maxLength) {
    if (value != null && value.length > maxLength) {
      return 'Must not exceed $maxLength characters';
    }
    return null;
  }

  /// Validates if the given string is a valid time in h:mm am/pm format.
  static String? validateTime(String? value) {
    if (value == null || value.isEmpty) {
      return 'Time cannot be empty';
    }
    final RegExp timeRegex =
        RegExp(r"^(0?[1-9]|1[0-2]):[0-5][0-9] (AM|PM)\$", caseSensitive: false);
    if (!timeRegex.hasMatch(value)) {
      return 'Enter a valid time (h:mm AM/PM)';
    }
    return null;
  }

  /// Validates if the given string is a valid date in dd-mm-yyyy format.
  static String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Date cannot be empty';
    }
    final RegExp dateRegex =
        RegExp(r"^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-(\d{4})$");
    if (!dateRegex.hasMatch(value)) {
      return 'Enter a valid date (DD-MM-YYYY)';
    }
    return null;
  }
}
