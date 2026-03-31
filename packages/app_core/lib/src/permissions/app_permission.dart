import '../entity/app_permission_status.dart';
import 'app_permission_type.dart';
import 'impl/notifications_permission.dart';
import 'impl/photos_add_permission.dart';
import 'impl/photos_full_permission.dart';

abstract class AppPermission {
  const AppPermission();

  static AppPermission of(AppPermissionType type) {
    return switch (type) {
      AppPermissionType.notifications => const AppNotificationsPermission(),
      AppPermissionType.photosFull => const AppPhotosFullPermission(),
      AppPermissionType.photosAdd => const AppPhotosAddPermission(),
    };
  }

  static AppPermission get notifications => of(AppPermissionType.notifications);
  static AppPermission get photosFull => of(AppPermissionType.photosFull);
  static AppPermission get photosAdd => of(AppPermissionType.photosAdd);

  Future<AppPermissionStatus> request();
  Future<AppPermissionStatus> status();
}
