import 'package:permission_handler/permission_handler.dart';
import '../app_permission.dart';
import '../../entity/app_permission_status.dart';
import '../mapper/permission_status_mapper.dart';

class AppCameraPermission extends AppPermission {
  const AppCameraPermission();

  @override
  Future<AppPermissionStatus> request() async =>
      (await Permission.camera.request()).toDomain();

  @override
  Future<AppPermissionStatus> status() async =>
      (await Permission.camera.status).toDomain();
}
