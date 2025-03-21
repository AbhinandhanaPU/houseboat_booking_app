import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/routes/routes.dart';
import 'package:houseboat_booking/app/views/auth_screens/login_screen.dart';
import 'package:houseboat_booking/app/views/auth_screens/otp_screen.dart';
import 'package:houseboat_booking/app/views/auth_screens/signup_screen.dart';
import 'package:houseboat_booking/app/views/auth_screens/welcome_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/bottom_nav_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/booking_home.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/screens/bookings/booking_details.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/home/home_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/profile/profile_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/search/search_list.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/search/search_screen.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/wishlist/wishlist_screen.dart';
import 'package:houseboat_booking/app/views/houseboat_screens/screens/guest_details_screen.dart';
import 'package:houseboat_booking/app/views/houseboat_screens/screens/houseboat_screen.dart';
import 'package:houseboat_booking/app/views/houseboat_screens/screens/package_details.dart';
import 'package:houseboat_booking/app/views/houseboat_screens/screens/price_confirmation_screen.dart';
import 'package:houseboat_booking/app/views/notifications/notifications.dart';

enum FormActionType { edit, create, draft }

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.welcomeScreen:
        return MaterialPageRoute<WelcomeScreen>(
          builder: (_) => const WelcomeScreen(),
        );

      case AppRoutes.signUp:
        return MaterialPageRoute<SignUpScreen>(
          builder: (_) => const SignUpScreen(),
        );
      case AppRoutes.logIn:
        return MaterialPageRoute<LoginScreen>(
          builder: (_) => const LoginScreen(),
        );
      case AppRoutes.otpScreen:
        return MaterialPageRoute<OtpScreen>(
          builder: (_) => const OtpScreen(),
        );
      case AppRoutes.homeNavScreen:
        return MaterialPageRoute<HomeNavScreen>(
          builder: (_) => const HomeNavScreen(),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute<HomeScreen>(
          builder: (_) => const HomeScreen(),
        );
      case AppRoutes.search:
        return MaterialPageRoute<SearchScreen>(
          builder: (_) => const SearchScreen(),
        );

      case AppRoutes.bookingHome:
        final int initialTabIndex = settings.arguments as int? ?? 0;
        return MaterialPageRoute<BookingHomeScreen>(
          builder: (_) => BookingHomeScreen(initialTabIndex: initialTabIndex),
        );
      case AppRoutes.wishList:
        return MaterialPageRoute<WishlistScreen>(
          builder: (_) => const WishlistScreen(),
        );
      case AppRoutes.profile:
        return MaterialPageRoute<ProfileScreen>(
          builder: (_) => const ProfileScreen(),
        );
      case AppRoutes.notification:
        return MaterialPageRoute<NotificationScreen>(
          builder: (_) => const NotificationScreen(),
        );
      case AppRoutes.houseBoatScreen:
        return MaterialPageRoute<HouseBoatScreen>(
          builder: (_) => const HouseBoatScreen(),
        );
      case AppRoutes.bookingDetails:
        return MaterialPageRoute<BookingDetailsScreen>(
          builder: (_) => const BookingDetailsScreen(),
        );
      case AppRoutes.guestDetails:
        return MaterialPageRoute<GuestDetailsScreen>(
          builder: (_) => const GuestDetailsScreen(),
        );
      case AppRoutes.priceConfirmationScreen:
        return MaterialPageRoute<PriceConfirmationScreen>(
          builder: (_) => const PriceConfirmationScreen(),
        );
      case AppRoutes.searchListScreen:
        return MaterialPageRoute<SearchListScreen>(
          builder: (_) => const SearchListScreen(),
        );
      case AppRoutes.packageDetails:
        return MaterialPageRoute<PackageDetailsScreeen>(
          builder: (_) => const PackageDetailsScreeen(),
        );
      default:
        return noRoute(settings);
    }
  }
}

Route<void> noRoute(RouteSettings settings) {
  return MaterialPageRoute<Scaffold>(
    builder: (_) => Scaffold(
      body: Center(
        child: Text('No route or arguments defined for ${settings.name}'),
      ),
    ),
  );
}
