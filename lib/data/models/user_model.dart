import '../../domain/entities/user_entity.dart';

/// Data model for a user, extending the [UserEntity] for use in the data layer.
/// 
/// Includes factory methods for JSON serialization and deserialization.
class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.name,
    required super.email,
  });

  /// Factory constructor to create a [UserModel] from a JSON [Map].
  factory UserModel.fromJson(Map<String, dynamic> json) {
    // TODO: Add validation to ensure all required fields are present in the JSON.
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  /// Converts the [UserModel] instance into a JSON [Map].
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}
