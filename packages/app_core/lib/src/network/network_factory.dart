import 'package:dio/dio.dart';
import '../access_token/access_token_repo.dart';
import 'network_config.dart';
import 'request_executor_impl.dart';

class NetworkFactory {
  static RequestExecutorImpl create({
    required NetworkConfig config,
    required AccessTokenRepo accessTokenRepo,
  }) {
    final dio = Dio(BaseOptions(
      baseUrl: config.baseUrl,
      sendTimeout: config.sendTimeout,
      connectTimeout: config.connectTimeout,
      receiveTimeout: config.receiveTimeout,
    ));
    return RequestExecutorImpl(dio: dio, accessTokenRepo: accessTokenRepo);
  }
}
