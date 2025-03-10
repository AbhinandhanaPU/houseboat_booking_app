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
