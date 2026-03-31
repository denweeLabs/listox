import 'package:json_annotation/json_annotation.dart';
import 'generic_exception.dart';

part 'server_error_response.g.dart';

@JsonSerializable()
class ServerErrorResponse {
  final String code;
  final String message;

  const ServerErrorResponse({
    required this.code,
    required this.message,
  });

  factory ServerErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServerErrorResponseToJson(this);

  GenericException get asGenericException {
    return GenericException(code: code, message: message);
  }
}
