import '../entities/user_entity.dart';

/// Abstract interface for user-related data operations.
abstract class UserRepository {
  /// Fetches a [UserEntity] by its unique [id].
  /// 
  /// TODO: Implement methods for user creation and updates.
  Future<UserEntity> getUser(int id);
}
