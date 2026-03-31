import 'package:app_core/app_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@module
abstract class PluginModule {
  @preResolve
  Future<LocalStorage> provideLocalStorage() => LocalStorage.getInstance();

  // @LazySingleton()
  // LocalSecureStorage provideLocalSecureStorage() =>
  //     LocalSecureStorage.getInstance();

  @preResolve
  Future<DeviceInfoProvider> provideDeviceInfoProvider() =>
      DeviceInfoProvider.getInstance();

  @preResolve
  Future<DeviceInfo> provideDeviceDetails(DeviceInfoProvider provider) =>
      provider.getDeviceInfo();

  @preResolve
  Future<AppPackageInfo> provideAppPackageInfo(DeviceInfoProvider provider) =>
      provider.getPackageInfo();

  // @LazySingleton(as: AccessTokenRepo)
  // AccessTokenRepoImpl provideAccessTokenRepo(
  //   LocalSecureStorage storage,
  //   @Named('ENV_PREFIX') String prefix,
  // ) =>
  //     AccessTokenRepoImpl(storage, prefix);

  @LazySingleton()
  FlutterLocalNotificationsPlugin provideFlutterLocalNotifications() =>
      FlutterLocalNotificationsPlugin();
}
