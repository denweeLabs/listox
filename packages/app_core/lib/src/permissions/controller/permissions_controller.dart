import '../../entity/device_info.dart';
import '../cubit/permissions_cubit.dart';

class PermissionsController {
  PermissionsController._();

  static PermissionsCubit? _cubit;
  static DeviceInfo? _deviceInfo;

  static void attach(PermissionsCubit cubit, {DeviceInfo? deviceInfo}) {
    _cubit = cubit;
    _deviceInfo = deviceInfo;
  }

  static PermissionsCubit get cubit {
    assert(_cubit != null, 'PermissionsController not initialized. Wrap your app with PermissionsInjector.');
    return _cubit!;
  }

  static DeviceInfo? get deviceInfo => _deviceInfo;
}
