import 'package:flutter/material.dart';

final List<Map<String, dynamic>> profileItems = [
  {
    "title": "Personal Info",
    "leading": Icons.person,
    "trailing": Icons.arrow_forward_ios,
    "destination": '/personalInfo',
  },
  {
    "title": "Payment Settings",
    "leading": 'assets/icons/credit_card_gear.svg',
    "trailing": Icons.arrow_forward_ios,
    "destination": '/paymentSettings',
  },
  {
    "title": "Booking & Cancellation Policies",
    "leading": 'assets/icons/lab_profile.svg',
    "trailing": Icons.arrow_forward_ios,
    "destination": '/bookingPolicies',
  },
  {
    "title": "Security & Account Settings",
    "leading": Icons.settings_outlined,
    "trailing": Icons.arrow_forward_ios,
    "destination": '/securitySettings',
  },
  {
    "title": "Notifications",
    "leading": Icons.notifications_active_outlined,
    "trailing": Icons.arrow_forward_ios,
    "destination": '/notifications',
  },
  {
    "title": "Support & Policies",
    "leading": Icons.live_help_outlined,
    "trailing": Icons.arrow_forward_ios,
    "destination": '/supportPolicies',
  },
  {
    "title": "How to Book",
    "leading": Icons.event_available_outlined,
    "trailing": Icons.arrow_forward_ios,
    "destination": '/howToBook',
  },
  {
    "title": "Invite a Friend",
    "leading": Icons.share,
    "trailing": Icons.arrow_forward_ios,
    "destination": '/inviteFriend',
  },
  {
    "title": "App Info",
    "leading": Icons.info_outline,
    "trailing": Icons.arrow_forward_ios,
    "destination": '/appInfo',
  },
];
