import 'package:collection/collection.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  Stream<ConnectivityResult> connectivityState() {
    return _connectivity.onConnectivityChanged.map(_processResult);
  }

  Future<ConnectivityResult> checkConnectivityNow() {
    return _connectivity.checkConnectivity().then(_processResult);
  }

  ConnectivityResult _processResult(List<ConnectivityResult> results) {
    return results.firstWhereOrNull((e) => e != ConnectivityResult.none) ??
        ConnectivityResult.none;
  }
}
