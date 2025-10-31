class PersonalInfoEntity {
  final int id;
  final String firstName;
  final String lastName;
  final String address;
  final String latitude;
  final String longitude;
  final String suburb;
  final String state;
  final String postcode;
  final String country;
  final String contactNumber;
  final String additionalNotes;
  final String status;
  final String roleIds;
  final String createdBy;
  final String updatedBy;
  final List<RoleDetailEntity> roleDetails;
  final List<String> apiaryRoleArray;

  PersonalInfoEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.suburb,
    required this.state,
    required this.postcode,
    required this.country,
    required this.contactNumber,
    required this.additionalNotes,
    required this.status,
    required this.roleIds,
    required this.createdBy,
    required this.updatedBy,
    required this.roleDetails,
    required this.apiaryRoleArray,
  });
}

class RoleDetailEntity {
  final int id;
  final String role;

  RoleDetailEntity({
    required this.id,
    required this.role,
  });
}
