/// Represents a post in the domain layer.
/// 
/// Note: This class currently includes JSON serialization logic, which is 
/// usually handled by models in the data layer. 
/// TODO: Move fromJson/toJson to a PostModel in the data layer for better separation of concerns.
class PostEntity {
  /// The unique identifier of the post.
  final int id;
  
  /// The identifier of the user who created the post.
  final int userId;
  
  /// The title of the post.
  final String title;
  
  /// The main content of the post.
  final String body;

  PostEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  /// Factory constructor to create a [PostEntity] from a JSON [Map].
  factory PostEntity.fromJson(Map<String, dynamic> json) {
    return PostEntity(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }

  /// Converts the [PostEntity] instance into a JSON [Map].
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'body': body,
    };
  }
}
