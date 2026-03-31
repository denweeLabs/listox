import 'package:permission_handler/permission_handler.dart';
import '../../entity/app_permission_status.dart';

extension PermissionStatusMapper on PermissionStatus {
  AppPermissionStatus toDomain() => switch (this) {
        PermissionStatus.granted => const AppPermissionStatus.granted(),
        PermissionStatus.limited => const AppPermissionStatus.granted(isLimited: true),
        PermissionStatus.permanentlyDenied => const AppPermissionStatus.denied(isForever: true),
        _ => const AppPermissionStatus.denied(),
      };

  static AppPermissionStatus mergeStrict2(PermissionStatus a, PermissionStatus b) {
    if (a.isGranted && b.isGranted) return const AppPermissionStatus.granted();
    if (a.isPermanentlyDenied || b.isPermanentlyDenied) {
      return const AppPermissionStatus.denied(isForever: true);
    }
    return const AppPermissionStatus.denied();
  }
}
