import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:intl/intl.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'title': 'Booking Confirmed',
      'subtitle': 'Your booking for Houseboat is confirmed.',
      'time': DateTime.now().subtract(Duration(minutes: 5)),
    },
    {
      'title': 'Payment Received',
      'subtitle': 'Payment of ₹12,000 received successfully.',
      'time': DateTime.now().subtract(Duration(hours: 1)),
    },
    {
      'title': 'Houseboat Ready',
      'subtitle': 'Your houseboat is ready for check-in.',
      'time': DateTime.now().subtract(Duration(days: 1)),
    },
    {
      'title': 'Booking Cancelled',
      'subtitle': 'Your booking has been cancelled.',
      'time': DateTime.now().subtract(Duration(days: 7)),
    },
  ];

  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        children: _groupNotificationsByDate().entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entry.key,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ...entry.value.map((notification) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    notification['title'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(notification['subtitle']),
                  trailing: Text(
                    _getTimeAgo(notification['time']),
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.lightGrey,
                    ),
                  ),
                );
              }),
              const Divider(),
            ],
          );
        }).toList(),
      ),
    );
  }

  String _getTimeAgo(DateTime dateTime) {
    Duration difference = DateTime.now().difference(dateTime);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hour ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return DateFormat('dd MMM yyyy').format(dateTime);
    }
  }

  Map<String, List<Map<String, dynamic>>> _groupNotificationsByDate() {
    Map<String, List<Map<String, dynamic>>> groupedNotifications = {};

    for (var notification in notifications) {
      DateTime date = notification['time'];
      String sectionTitle;

      if (DateTime.now().difference(date).inDays == 0) {
        sectionTitle = 'Today';
      } else if (DateTime.now().difference(date).inDays == 1) {
        sectionTitle = 'Yesterday';
      } else if (DateTime.now().difference(date).inDays < 7) {
        sectionTitle = 'Last Week';
      } else {
        sectionTitle = 'Last Month';
      }

      if (!groupedNotifications.containsKey(sectionTitle)) {
        groupedNotifications[sectionTitle] = [];
      }

      groupedNotifications[sectionTitle]?.add(notification);
    }

    return groupedNotifications;
  }
}
