import 'package:dio/dio.dart';
import '../../core/network/dio_client.dart';
import '../models/user_model.dart';

/// Data provider responsible for making raw API calls related to user data.
class UserProvider {
  final Dio _dio = DioClient().dio;

  /// Fetches raw user data from the server and parses it into a [UserModel].
  /// 
  /// [id] specifies the unique identifier of the user to fetch.
  /// TODO: Implement a caching mechanism to avoid redundant network calls.
  Future<UserModel> fetchUser(int id) async {
    try {
      final response = await _dio.get('/users/$id');
      return UserModel.fromJson(response.data);
    } catch (e) {
      // TODO: Log the error to a monitoring service.
      rethrow;
    }
  }
}
