import 'package:uuid/uuid.dart';

class UniqueId {
  final String value;

  factory UniqueId.generate() {
    return UniqueId._(const Uuid().v4());
  }

  factory UniqueId.fromValue(String value) {
    return UniqueId._(value);
  }

  factory UniqueId.empty() {
    return const UniqueId._('');
  }

  const UniqueId._(this.value);

  factory UniqueId.fromJson(Map<String, dynamic> json) =>
      UniqueId.fromValue(json['value'] as String);

  Map<String, dynamic> toJson() => {'value': value};

  @override
  String toString() => 'UniqueId($value)';

  String get stringValue => value;

  bool get isEmpty => value.isEmpty;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UniqueId && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
