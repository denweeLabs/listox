import 'package:flutter/foundation.dart';

@immutable
class ConnectivityState {
  const ConnectivityState({required this.isConnected});

  factory ConnectivityState.initial() =>
      const ConnectivityState(isConnected: true);

  final bool isConnected;

  ConnectivityState copyWith({bool? isConnected}) {
    return ConnectivityState(isConnected: isConnected ?? this.isConnected);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectivityState && other.isConnected == isConnected;

  @override
  int get hashCode => isConnected.hashCode;

  @override
  String toString() => 'ConnectivityState(isConnected: $isConnected)';
}
