import 'package:permission_handler/permission_handler.dart';
import '../app_permission.dart';
import '../../entity/app_permission_status.dart';
import '../mapper/permission_status_mapper.dart';

class AppNotificationsPermission extends AppPermission {
  const AppNotificationsPermission();

  @override
  Future<AppPermissionStatus> request() async =>
      (await Permission.notification.request()).toDomain();

  @override
  Future<AppPermissionStatus> status() async =>
      (await Permission.notification.status).toDomain();
}
