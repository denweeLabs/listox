import 'package:permission_handler/permission_handler.dart';
import '../app_permission.dart';
import '../../entity/app_permission_status.dart';
import '../mapper/permission_status_mapper.dart';

/*
Podfile definitions:

if target.name == "geolocator_apple"
  target.build_configurations.each do |config|
    config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
      '$(inherited)',
      
      'BYPASS_PERMISSION_LOCATION_ALWAYS=1'
    ]
  end
end

target.build_configurations.each do |config|
  config.build_settings['ENABLE_BITCODE'] = 'NO'
  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
  config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
    '$(inherited)',

    ## dart: PermissionGroup.notification
    'PERMISSION_NOTIFICATIONS=1',
    # 'PERMISSION_LOCATION=1',
    # 'PERMISSION_CAMERA=1',
  ]
end


Info.plist:
<key>NSLocationWhenInUseUsageDescription</key>
<string>Your location is used to automatically log weather conditions when a migraine starts. This helps you spot weather-related triggers over time.</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>Your location is used to automatically log weather conditions when a migraine starts. This helps you spot weather-related triggers over time.</string>
*/
class AppLocationPermission extends AppPermission {
  const AppLocationPermission();

  @override
  Future<AppPermissionStatus> request() async =>
      (await Permission.locationWhenInUse.request()).toDomain();

  @override
  Future<AppPermissionStatus> status() async =>
      (await Permission.locationWhenInUse.status).toDomain();
}
