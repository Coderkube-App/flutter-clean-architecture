import '../../core/network/http_helper.dart';
import '../../domain/entities/post_entity.dart';
import '../../domain/repositories/post_repository.dart';

/// Concrete implementation of the [PostRepository] interface.
/// 
/// Communicates with external data sources using [HttpHelper] to perform post-related operations.
class PostRepositoryImpl implements PostRepository {
  final HttpHelper _httpHelper;

  PostRepositoryImpl(this._httpHelper);

  @override
  /// Fetches a post from a remote API and converts it into a [PostEntity].
  /// 
  /// [id] is the unique identifier of the post.
  /// TODO: Replace hardcoded URL with [ApiEndpoints] constant.
  Future<PostEntity> getPost(int id) async {
    // TODO: Add error handling for non-200 response codes or malformed JSON.
    final response = await _httpHelper.get('https://jsonplaceholder.typicode.com/posts/$id');
    return PostEntity.fromJson(response.data);
  }
}
