import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/theme.dart';
import 'package:houseboat_booking/app/views/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Houseboat Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      darkTheme: AppTheme.darkTheme,
      home: WelcomeScreen(),
    );
  }
}
