import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class ConnectivityService {
  static const _interval = Duration(seconds: 5);
  
  final _checker = InternetConnection.createInstance(checkInterval: _interval);

  Stream<bool> connectivityState() {
    return _checker.onStatusChange
        .map((status) => status == InternetStatus.connected);
  }

  Future<bool> checkConnectivityNow() {
    return _checker.hasInternetAccess;
  }
}
