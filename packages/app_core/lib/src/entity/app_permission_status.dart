sealed class AppPermissionStatus {
  const AppPermissionStatus._();

  const factory AppPermissionStatus.granted({bool isLimited}) = _Granted;
  const factory AppPermissionStatus.denied({bool isForever}) = _Denied;

  bool get isAnyGranted => this is _Granted;
  bool get isAnyDenied => this is _Denied;

  bool get isGranted => switch (this) {
        _Granted(isLimited: false) => true,
        _ => false,
      };

  bool get isLimited => switch (this) {
        _Granted(isLimited: true) => true,
        _ => false,
      };

  bool get isDenied => switch (this) {
        _Denied(isForever: false) => true,
        _ => false,
      };

  bool get isDeniedForever => switch (this) {
        _Denied(isForever: true) => true,
        _ => false,
      };
}

final class _Granted extends AppPermissionStatus {
  @override
  final bool isLimited;
  const _Granted({this.isLimited = false}) : super._();

  @override
  String toString() => 'Granted(isLimited: $isLimited)';
}

final class _Denied extends AppPermissionStatus {
  final bool isForever;
  const _Denied({this.isForever = false}) : super._();

  @override
  String toString() => 'Denied(isForever: $isForever)';
}
