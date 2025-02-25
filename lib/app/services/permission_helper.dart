import 'package:permission_handler/permission_handler.dart';

class PermissionsHelper {
  /// Request a specific permission
  static Future<bool> requestPermission(Permission permission) async {
    var status = await permission.request();
    return status == PermissionStatus.granted;
  }

  /// Check if a permission is already granted
  static Future<bool> isPermissionGranted(Permission permission) async {
    return await permission.isGranted;
  }

  /// Request multiple permissions
  static Future<Map<Permission, PermissionStatus>> requestMultiplePermissions(
      List<Permission> permissions) async {
    return await permissions.request();
  }

  /// Open app settings
  static Future<void> openAppSettings() async {
    await openAppSettings();
  }
}

// Usage Example:

// bool cameraGranted = await PermissionsHelper.requestPermission(Permission.camera);
// if (cameraGranted) {
//   print("Camera Permission Granted!");
// } else {
//   print("Camera Permission Denied!");
// }
