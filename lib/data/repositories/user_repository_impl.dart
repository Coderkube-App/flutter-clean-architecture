import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../providers/user_provider.dart';

/// Concrete implementation of the [UserRepository] interface.
/// 
/// Leverages [UserProvider] to fetch and manage user-specific data.
class UserRepositoryImpl implements UserRepository {
  final UserProvider _provider;

  UserRepositoryImpl(this._provider);

  @override
  /// Fetches a user by their [id] from the underlying data provider.
  /// 
  /// TODO: Implement mapping from data [UserModel] to domain [UserEntity] if they differ.
  Future<UserEntity> getUser(int id) async {
    return await _provider.fetchUser(id);
  }
}
