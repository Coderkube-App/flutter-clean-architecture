import 'package:dio/dio.dart';
import 'api_logger.dart';

/// A singleton client for making HTTP requests using the Dio package.
class DioClient {
  static final DioClient _instance = DioClient._internal();
  late Dio dio;

  /// Factory constructor to return the same [DioClient] instance.
  factory DioClient() {
    return _instance;
  }

  /// Internal constructor for initializing the Dio instance.
  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        // TODO: Move base URL to a configuration file or environment variable.
        baseUrl: 'https://api.example.com', // Replace with your base URL
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Add Interceptors for logging and authentication
    dio.interceptors.add(ApiLogger());

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // TODO: Implement authentication token injection logic.
          // options.headers['Authorization'] = 'Bearer $token';
          return handler.next(options);
        },
        onError: (DioException e, handler) {
          // TODO: Implement global error handling (e.g., token expiration, connectivity issues).
          return handler.next(e);
        },
      ),
    );
  }
}
