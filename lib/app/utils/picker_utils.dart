import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class PickerUtils {
  /// Opens a date picker and returns the selected date as a formatted string (dd-MM-yyyy)
  static Future<String?> pickDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      return DateFormat('dd-MM-yyyy').format(selectedDate);
    }
    return null;
  }

  /// Opens a time picker and returns the selected time as a formatted string (h:mm a)
  static Future<String?> pickTime(BuildContext context) async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      final now = DateTime.now();
      final formattedTime = DateFormat('h:mm a').format(
        DateTime(now.year, now.month, now.day, selectedTime.hour,
            selectedTime.minute),
      );
      return formattedTime;
    }
    return null;
  }

  /// Opens an image picker and returns the selected image file path
  static Future<XFile?> pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: source);
    return image;
  }
}
