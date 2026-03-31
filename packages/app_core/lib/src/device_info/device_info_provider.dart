import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../entity/app_package_info.dart';
import '../entity/device_info.dart';

class DeviceInfoProvider {
  final PackageInfo _packageInfo;
  final DeviceInfoPlugin _deviceInfo;

  DeviceInfoProvider._(this._packageInfo, this._deviceInfo);

  static Future<DeviceInfoProvider> getInstance() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final deviceInfo = DeviceInfoPlugin();
    return DeviceInfoProvider._(packageInfo, deviceInfo);
  }

  Future<DeviceInfo> getDeviceInfo() async {
    if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      final deviceInfo = DeviceInfo(
        deviceModel: info.modelName,
        operatingSystem: Platform.operatingSystem,
        operatingSystemVersion: Platform.operatingSystemVersion,
        osVersionValue: info.systemVersion,
        androidSdkInt: null,
        appInfo: AppInfo(
          packageName: _packageInfo.packageName,
          buildNumber: _packageInfo.buildNumber,
          version: _packageInfo.version,
        ),
        deviceId: info.identifierForVendor,
      );
      debugPrint(deviceInfo.toString());
      return deviceInfo;
    }

    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      final deviceInfo = DeviceInfo(
        deviceModel: info.model,
        operatingSystem: Platform.operatingSystem,
        operatingSystemVersion: Platform.operatingSystemVersion,
        osVersionValue: info.version.release,
        androidSdkInt: info.version.sdkInt,
        appInfo: AppInfo(
          packageName: _packageInfo.packageName,
          buildNumber: _packageInfo.buildNumber,
          version: _packageInfo.version,
        ),
        deviceId: info.id,
      );
      debugPrint(deviceInfo.toString());
      return deviceInfo;
    }

    throw UnsupportedError('Operating system is not supported');
  }

  Future<AppPackageInfo> getPackageInfo() async {
    final packageInfo = AppPackageInfo(
      appName: _packageInfo.appName,
      packageName: _packageInfo.packageName,
      version: _packageInfo.version,
      buildNumber: _packageInfo.buildNumber,
    );
    debugPrint(packageInfo.toString());
    return packageInfo;
  }
}
