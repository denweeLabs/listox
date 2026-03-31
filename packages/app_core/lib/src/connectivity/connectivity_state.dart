import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

@immutable
class ConnectivityState {
  final ConnectivityResult connectivityResult;

  const ConnectivityState({required this.connectivityResult});

  factory ConnectivityState.initial() => const ConnectivityState(
        connectivityResult: ConnectivityResult.wifi,
      );

  bool get isConnected => connectivityResult != ConnectivityResult.none;

  ConnectivityState copyWith({ConnectivityResult? connectivityResult}) {
    return ConnectivityState(
      connectivityResult: connectivityResult ?? this.connectivityResult,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectivityState &&
          other.connectivityResult == connectivityResult;

  @override
  int get hashCode => connectivityResult.hashCode;

  @override
  String toString() => 'ConnectivityState(connectivityResult: $connectivityResult)';
}
