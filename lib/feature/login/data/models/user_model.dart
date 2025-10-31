import 'package:personal_info_manager/feature/login/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.roleId,
    required super.role,
    required super.firstName,
    required super.lastName,
    required super.profileImageUrl,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 0,
      roleId: json['role_id']?.toString() ?? '',
      role: json['role'] ?? '',
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'],
      profileImageUrl: json['profile_image_url'] ?? '',
    );
  }
}
