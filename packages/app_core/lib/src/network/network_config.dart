class NetworkConfig {
  final String baseUrl;
  final Duration sendTimeout;
  final Duration connectTimeout;
  final Duration receiveTimeout;

  const NetworkConfig({
    required this.baseUrl,
    this.sendTimeout = const Duration(seconds: 45),
    this.connectTimeout = const Duration(seconds: 45),
    this.receiveTimeout = const Duration(seconds: 45),
  });
}
