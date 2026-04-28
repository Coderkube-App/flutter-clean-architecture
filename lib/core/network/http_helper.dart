import 'package:dio/dio.dart';
import 'dio_client.dart';

/// A helper class that provides a wrapper around the [Dio] client for common HTTP methods.
class HttpHelper {
  final Dio _dio = DioClient().dio;

  /// Performs a GET request to the specified [url].
  /// 
  /// TODO: Implement response transformation or generic type handling.
  Future<Response> get(String url, {Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      final response = await _dio.get(url, queryParameters: queryParameters, options: options);
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// Performs a POST request to the specified [url] with optional [data].
  Future<Response> post(String url, {dynamic data, Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      final response = await _dio.post(url, data: data, queryParameters: queryParameters, options: options);
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// Performs a PUT request to the specified [url] with optional [data].
  Future<Response> put(String url, {dynamic data, Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      final response = await _dio.put(url, data: data, queryParameters: queryParameters, options: options);
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// Performs a DELETE request to the specified [url] with optional [data].
  Future<Response> delete(String url, {dynamic data, Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      final response = await _dio.delete(url, data: data, queryParameters: queryParameters, options: options);
      return response;
    } on DioException {
      rethrow;
    }
  }
}
