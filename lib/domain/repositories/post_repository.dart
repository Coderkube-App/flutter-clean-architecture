import '../entities/post_entity.dart';

/// Abstract interface for post-related data operations.
abstract class PostRepository {
  /// Fetches a [PostEntity] by its unique [id].
  /// 
  /// TODO: Handle potential network or parsing errors in implementations.
  Future<PostEntity> getPost(int id);
}
