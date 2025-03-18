import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/routes/router.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/theme/theme.dart';
import 'package:houseboat_booking/app/views/auth_screens/welcome_screen.dart';

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
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: AppRoutes.houseBoatScreen,
      onGenerateRoute: AppRouter().generateRoute,
      onUnknownRoute: (settings) => noRoute(settings),
      home: WelcomeScreen(),
    );
  }
}
