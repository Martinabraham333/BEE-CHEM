import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';

class PersonalInfoModel extends PersonalInfoEntity {
  PersonalInfoModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.address,
    required super.latitude,
    required super.longitude,
    required super.suburb,
    required super.state,
    required super.postcode,
    required super.country,
    required super.contactNumber,
    required super.additionalNotes,
    required super.status,
    required super.roleIds,
    required super.createdBy,
    required super.updatedBy,
    required super.roleDetails,
    required super.apiaryRoleArray,
  });

  factory PersonalInfoModel.fromJson(Map<String, dynamic> json) {
    return PersonalInfoModel(
      id: json['id'] ?? 0,
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      address: json['address'] ?? '',
      latitude: json['latitude'] ?? '',
      longitude: json['longitude'] ?? '',
      suburb: json['suburb'] ?? '',
      state: json['state'] ?? '',
      postcode: json['postcode'] ?? '',
      country: json['country'] ?? '',
      contactNumber: json['contact_number'] ?? '',
      additionalNotes: json['additional_notes'] ?? '',
      status: json['status'] ?? '',
      roleIds: json['role_ids'] ?? '',
      createdBy: json['created_by'] ?? '',
      updatedBy: json['updated_by'] ?? '',
      roleDetails:
          (json['role_details'] as List<dynamic>?)
              ?.map((e) => RoleDetailModel.fromJson(e))
              .toList() ??
          [],
      apiaryRoleArray:
          (json['apiary_role_array'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
    );
  }
}

class RoleDetailModel extends RoleDetailEntity {
  RoleDetailModel({required super.id, required super.role});

  factory RoleDetailModel.fromJson(Map<String, dynamic> json) {
    return RoleDetailModel(id: json['id'] ?? 0, role: json['role'] ?? '');
  }
}
