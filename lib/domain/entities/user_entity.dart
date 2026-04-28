/// Represents a user in the domain layer.
/// 
/// This entity should be agnostic of any data layer implementation or storage format.
class UserEntity {
  /// The unique identifier for the user.
  final int id;
  
  /// The full name of the user.
  final String name;
  
  /// The email address of the user.
  final String email;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
  });
}
