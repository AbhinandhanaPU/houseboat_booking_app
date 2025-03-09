import 'package:intl/intl.dart';

class FormatUtils {
  /// Converts a DateTime object to a formatted string (dd-MM-yyyy)
  static String formatDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  /// Converts a DateTime object to a formatted string (h:mm a)
  static String formatTime(DateTime time) {
    return DateFormat('h:mm a').format(time);
  }

  /// Converts a string (dd-MM-yyyy) to a DateTime object
  static DateTime? parseDate(String dateStr) {
    try {
      return DateFormat('dd-MM-yyyy').parseStrict(dateStr);
    } catch (e) {
      return null;
    }
  }

  /// Converts a string (h:mm a) to a DateTime object
  static DateTime? parseTime(String timeStr) {
    try {
      return DateFormat('h:mm a').parseStrict(timeStr);
    } catch (e) {
      return null;
    }
  }

  /// Converts a DateTime object to a formatted string (yyyy-MM-dd HH:mm:ss)
  static String formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }

  /// Converts a timestamp (milliseconds since epoch) to a formatted date string
  static String formatTimestamp(int timestamp) {
    return formatDateTime(DateTime.fromMillisecondsSinceEpoch(timestamp));
  }

  /// Converts a 24-hour time string (HH:mm) to 12-hour format (h:mm a)
  static String convertTo12HourFormat(String timeStr) {
    try {
      DateTime dateTime = DateFormat('HH:mm').parse(timeStr);
      return DateFormat('h:mm a').format(dateTime);
    } catch (e) {
      return timeStr;
    }
  }

  /// Converts a 12-hour time string (h:mm a) to 24-hour format (HH:mm)
  static String convertTo24HourFormat(String timeStr) {
    try {
      DateTime dateTime = DateFormat('h:mm a').parse(timeStr);
      return DateFormat('HH:mm').format(dateTime);
    } catch (e) {
      return timeStr;
    }
  }

  static String calculateDurationFromString(
      String checkInDate, String checkOutDate) {
    // Parse the date strings to DateTime
    DateTime checkIn = DateFormat('dd MMM yyyy').parse(checkInDate);
    DateTime checkOut = DateFormat('dd MMM yyyy').parse(checkOutDate);

    // Find the difference between dates
    Duration duration = checkOut.difference(checkIn);

    int days = duration.inDays;
    int hours = duration.inHours % 24;
    int minutes = duration.inMinutes % 60;

    // Return the result in the desired format
    if (days > 0) {
      return '$days Night${days > 1 ? 's' : ''}';
    } else if (hours > 0) {
      return '$hours Hour${hours > 1 ? 's' : ''}';
    } else if (minutes > 0) {
      return '$minutes Minute${minutes > 1 ? 's' : ''}';
    } else {
      return 'Less than a minute';
    }
  }
}
