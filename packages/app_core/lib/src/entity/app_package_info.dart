import 'package:flutter/foundation.dart';

@immutable
class AppPackageInfo {
  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;

  const AppPackageInfo({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
  });

  @override
  String toString() {
    return '┌── AppPackageInfo ─────────────────────────\n'
        '│  Name:    $appName\n'
        '│  Package: $packageName\n'
        '│  Version: v$version+$buildNumber\n'
        '└───────────────────────────────────────────';
  }
}
