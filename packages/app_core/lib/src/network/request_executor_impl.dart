import 'package:dio/dio.dart';
import '../access_token/access_token_repo.dart';
import 'model/authorization_exception.dart';
import 'model/connection_exception.dart';
import 'model/generic_exception.dart';
import 'model/server_response.dart';
import 'request_executor.dart';

class RequestExecutorImpl implements RequestExecutor {
  final Dio _dio;
  final AccessTokenRepo _accessTokenRepo;

  RequestExecutorImpl({
    required Dio dio,
    required AccessTokenRepo accessTokenRepo,
  })  : _dio = dio,
        _accessTokenRepo = accessTokenRepo;

  @override
  Future<ServerResponse> get(String path, {Map<String, dynamic>? queryParams}) async {
    return _execute(() => _dio.get(path, queryParameters: queryParams));
  }

  @override
  Future<ServerResponse> post(String path, {dynamic body}) async {
    return _execute(() => _dio.post(path, data: body));
  }

  @override
  Future<ServerResponse> put(String path, {dynamic body}) async {
    return _execute(() => _dio.put(path, data: body));
  }

  @override
  Future<ServerResponse> delete(String path) async {
    return _execute(() => _dio.delete(path));
  }

  Future<ServerResponse> _execute(Future<Response> Function() call) async {
    try {
      final token = await _accessTokenRepo.getAccessToken();
      if (token != null) {
        _dio.options.headers['Authorization'] = 'Bearer $token';
      }
      final response = await call();
      return ServerResponse(
        statusCode: response.statusCode,
        data: response.data,
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw ConnectionException();
      }
      if (e.response?.statusCode == 401) {
        throw AuthorizationException();
      }
      throw GenericException(
        code: e.response?.statusCode?.toString() ?? 'UNKNOWN',
        message: e.message ?? 'Unknown error',
      );
    }
  }
}
