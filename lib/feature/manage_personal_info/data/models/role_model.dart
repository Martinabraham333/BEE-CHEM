import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/role_entity.dart';

class RoleModel extends RoleEntity {
  RoleModel({required super.id, required super.role});
  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      id: json['id'] ?? 0,
      role: json['role'] ?? '',
    );
  }

}