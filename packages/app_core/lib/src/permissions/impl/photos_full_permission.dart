import 'dart:io';

import 'package:permission_handler/permission_handler.dart';
import '../app_permission.dart';
import '../../entity/app_permission_status.dart';
import '../mapper/permission_status_mapper.dart';
import '../controller/permissions_controller.dart';

class AppPhotosFullPermission extends AppPermission {
  const AppPhotosFullPermission();

  static const _androidSdkThreshold = 32;

  @override
  Future<AppPermissionStatus> request() async {
    if (Platform.isAndroid) {
      final sdkInt = PermissionsController.deviceInfo?.androidSdkInt;
      if (sdkInt != null && sdkInt <= _androidSdkThreshold) {
        return (await Permission.storage.request()).toDomain();
      }
      final photos = await Permission.photos.request();
      final videos = await Permission.videos.request();
      return PermissionStatusMapper.mergeStrict2(photos, videos);
    }
    return (await Permission.photos.request()).toDomain();
  }

  @override
  Future<AppPermissionStatus> status() async {
    if (Platform.isAndroid) {
      final sdkInt = PermissionsController.deviceInfo?.androidSdkInt;
      if (sdkInt != null && sdkInt <= _androidSdkThreshold) {
        return (await Permission.storage.status).toDomain();
      }
      final photos = await Permission.photos.status;
      final videos = await Permission.videos.status;
      return PermissionStatusMapper.mergeStrict2(photos, videos);
    }
    return (await Permission.photos.status).toDomain();
  }
}
