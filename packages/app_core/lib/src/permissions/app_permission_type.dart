import 'package:app_core/src/entity/app_permission_status.dart';
import 'package:app_core/src/permissions/controller/permissions_controller.dart';
import 'package:app_settings/app_settings.dart';

enum AppPermissionType {
  notifications,
  photosFull,
  photosAdd,
}

extension AppPermissionTypeX on AppPermissionType {
  Future<AppPermissionStatus> check() =>
      PermissionsController.cubit.check(this);

  Future<AppPermissionStatus> request() =>
      PermissionsController.cubit.request(this);

  AppPermissionStatus? get currentStatus =>
      PermissionsController.cubit.state.statusOf(this);

  bool get isGranted => PermissionsController.cubit.state.isGranted(this);

  Future<void> openSettings() {
    return switch (this) {
      AppPermissionType.notifications => AppSettings.openAppSettings(
        type: AppSettingsType.notification,
      ),
      AppPermissionType.photosFull => AppSettings.openAppSettings(),
      AppPermissionType.photosAdd => AppSettings.openAppSettings(),
    };
  }
}
