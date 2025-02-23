import 'package:flutter/material.dart';
import 'package:houseboat_booking/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Houseboat Booking App',
      home: SplashScreen(),
    );
  }
}
