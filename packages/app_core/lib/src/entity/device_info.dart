import 'package:flutter/material.dart';

@immutable
class DeviceInfo {
  final String deviceModel;
  final String operatingSystem;
  final String operatingSystemVersion;
  final String osVersionValue;
  final int? androidSdkInt;
  final AppInfo appInfo;
  final String? deviceId;

  const DeviceInfo({
    required this.deviceModel,
    required this.operatingSystem,
    required this.operatingSystemVersion,
    required this.osVersionValue,
    required this.androidSdkInt,
    required this.appInfo,
    required this.deviceId,
  });

  @override
  String toString() {
    final sdk = androidSdkInt != null ? '\n│  SDK:       $androidSdkInt' : '';
    return '┌── DeviceInfo ─────────────────────────────\n'
        '│  Model:     $deviceModel\n'
        '│  OS:        $operatingSystem $osVersionValue$sdk\n'
        '│  Device ID: $deviceId\n'
        '│  App:       ${appInfo.packageName} v${appInfo.version}+${appInfo.buildNumber}\n'
        '└───────────────────────────────────────────';
  }
}

@immutable
class AppInfo {
  final String packageName;
  final String version;
  final String buildNumber;

  const AppInfo({
    required this.packageName,
    required this.version,
    required this.buildNumber,
  });

  @override
  String toString() => 'AppInfo { $packageName v$version+$buildNumber }';
}
