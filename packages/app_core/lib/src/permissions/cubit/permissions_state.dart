import '../app_permission_type.dart';
import '../../entity/app_permission_status.dart';

class PermissionsState {
  final Map<AppPermissionType, AppPermissionStatus> statuses;

  const PermissionsState({this.statuses = const {}});

  PermissionsState withStatus(
    AppPermissionType type,
    AppPermissionStatus status,
  ) {
    return PermissionsState(statuses: {...statuses, type: status});
  }

  AppPermissionStatus? statusOf(AppPermissionType type) {
    return statuses[type];
  }

  bool isGranted(AppPermissionType type) {
    return statuses[type]?.isAnyGranted ?? false;
  }
}
