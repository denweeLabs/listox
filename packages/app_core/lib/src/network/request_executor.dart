import 'model/server_response.dart';

abstract class RequestExecutor {
  Future<ServerResponse> get(String path, {Map<String, dynamic>? queryParams});
  Future<ServerResponse> post(String path, {dynamic body});
  Future<ServerResponse> put(String path, {dynamic body});
  Future<ServerResponse> delete(String path);
}
