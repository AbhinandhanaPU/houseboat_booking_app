// ignore_for_file: unrelated_type_equality_checks

import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkUtils {
  /// Check if device is connected to the internet
  static Future<bool> isConnected() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  /// Listen for network changes
  static Stream<bool> onNetworkChange() {
    return Connectivity().onConnectivityChanged.map((event) {
      return event != ConnectivityResult.none;
    });
  }
}
// Usage Example:
// bool isOnline = await NetworkUtils.isConnected();
// print("Internet Connected: $isOnline");
