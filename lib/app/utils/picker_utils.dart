import 'package:file_picker/file_picker.dart';
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

  /// Opens an image picker and returns a list of selected image file paths
  static Future<List<XFile>?> pickMultipleImages() async {
    final ImagePicker picker = ImagePicker();
    List<XFile>? images = await picker.pickMultiImage();
    return images;
  }

  /// Pick a single video
  static Future<XFile?> pickVideo(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    return await picker.pickVideo(source: source);
  }

  /// Pick multiple videos
  static Future<List<XFile>?> pickMultipleVideos() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.video,
      allowMultiple: true,
    );

    if (result != null) {
      return result.files.map((file) => XFile(file.path!)).toList();
    }
    return null;
  }

  /// Opens a file picker and returns the selected file path
  static Future<String?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.path != null) {
      return result.files.single.path!;
    }
    return null;
  }

  /// Pick a directory (Folder Picker)
  static Future<String?> pickDirectory() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
    return selectedDirectory;
  }
}
